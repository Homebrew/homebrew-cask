cask "netbeans" do
  version "12.4"
  sha256 "a4fa57eb1ade2a769667e4840ee190d4e9445542760b7cdc2cc89b4a4e4739c2"

  url "https://www-eu.apache.org/dist/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url "https://netbeans.apache.org/download/index.html"
    regex(/NetBeans\s*v?(\d+(?:\.\d+)+)/i)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
