cask "shiori" do
  version "1.1.0"
  sha256 "0496885a3f738681184c28e61fe134621a831af3c8f457784e9da72e43eae94d"

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast "https://aki-null.net/shiori/appcast.xml"
  name "Shiori"
  homepage "https://aki-null.net/shiori/"

  app "Shiori.app"
end
