cask "netbeans" do
  version "18"
  sha256 "4593c527f7c851b9a67f81540a2134bc921cb27b94068d34be87b8459520f8dc"

  url "https://dlcdn.apache.org/netbeans/netbeans-installers/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  # Major releases sometimes only use the major version (13) instead of
  # major/minor (13.0).
  livecheck do
    url "https://netbeans.apache.org/download/index.html"
    regex(/>\s*Apache\s*NetBeans\s*v?(\d+(?:\.\d+)*)\s*</im)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
