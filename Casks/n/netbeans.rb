cask "netbeans" do
  version "19"
  sha256 "366168ad60c7ec22357ac78405e761b2bae7e777b33a1f0d9ea9a0302cd6bacb"

  url "https://dlcdn.apache.org/netbeans/netbeans-installers/#{version}/Apache-NetBeans-#{version}.pkg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  # Major releases sometimes only use the major version (13) instead of
  # major/minor (13.0).
  livecheck do
    url "https://netbeans.apache.org/download/index.html"
    regex(/>\s*Apache\s*NetBeans\s*v?(\d+(?:\.\d+)*)\s*</im)
  end

  pkg "Apache-NetBeans-#{version}.pkg"

  uninstall pkgutil: [
              "org.apache.netbeans",
              "org.netbeans.ide.*|glassfish.*",
            ],
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
