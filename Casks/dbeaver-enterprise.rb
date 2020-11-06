cask "dbeaver-enterprise" do
  version "7.2.0"
  sha256 "e9f0275c0c9070886d73f911fc55d598a65d09913e880c876c2e50667ab387a2"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast "https://dbeaver.com/product/version.xml"
  name "DBeaver Enterprise Edition"
  homepage "https://dbeaver.com/"

  app "DBeaverEE.app"

  caveats do
    depends_on_java "8+"
  end
end
