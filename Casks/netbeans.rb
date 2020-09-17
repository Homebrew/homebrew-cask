cask "netbeans" do
  version "12.1"
  sha256 "0676fb3c1f7e1af99c8f3d4016799635f3dfcf578d998320b8408fa3a69ab823"

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
