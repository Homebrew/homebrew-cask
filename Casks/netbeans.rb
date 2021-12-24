cask "netbeans" do
  version "12.6"
  sha256 "714cbd2f8409ff45764040ddbbcf00a79eeeb41d08dfd29dd2e46466a29917ff"

  url "https://dlcdn.apache.org/netbeans/netbeans-installers/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url "https://netbeans.apache.org/download/index.html"
    regex(/NetBeans\s*v?(\d+(?:\.\d+)+)</i)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
