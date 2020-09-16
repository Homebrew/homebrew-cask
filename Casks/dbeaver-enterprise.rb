cask "dbeaver-enterprise" do
  version "7.2.0"
  sha256 "c65bdf23a79f4fd6bf1ee912d8dc0b2af2c9a355500b4585b907e194983e9f99"

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast "https://dbeaver.com/product/version.xml"
  name "DBeaver Enterprise Edition"
  homepage "https://dbeaver.com/"

  app "DBeaverEE.app"

  caveats do
    depends_on_java "8+"
  end
end
