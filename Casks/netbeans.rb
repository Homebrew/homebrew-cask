cask "netbeans" do
  version "12.2"
  sha256 "25ef01af76e8730e394faae205fcd47fa7d084703322c008c0245f2bf0713ff6"

  url "https://www-eu.apache.org/dist/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  appcast "https://www-eu.apache.org/dist/netbeans/netbeans/"
  name "NetBeans IDE"
  desc "Open-source development environment, tooling"
  homepage "https://netbeans.apache.org/download/index.html"

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
