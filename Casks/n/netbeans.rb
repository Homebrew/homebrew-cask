cask "netbeans" do
  version "21"
  sha256 "954224389a407519a2668830c262094f7580e138095097b5cfe36c647310d408"

  url "https://dlcdn.apache.org/netbeans/netbeans-installers/#{version}/Apache-NetBeans-#{version}.pkg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  # Major releases sometimes only use the major version (13) instead of
  # major/minor (13.0).
  livecheck do
    url "https://netbeans.apache.org/front/main/download/"
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
