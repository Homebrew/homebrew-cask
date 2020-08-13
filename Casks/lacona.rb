cask "lacona" do
  version "1.1.8"
  sha256 "df2886d3553ef8cf9936af3d944963c8e61c83479bcb0e7617a7a367816e9399"

  url "https://download.lacona.io/packages/#{version}/Lacona.zip"
  appcast "https://download.lacona.io/appcast.xml"
  name "Lacona"
  homepage "https://www.lacona.io/"

  auto_updates true

  app "Lacona.app"
end
