cask "bookletcreator" do
  version "2.0.5"
  sha256 "f9e702b48d56c41104ddd5c051d5ea77330717113f92396e225ab8983c82d176"

  url "https://www.bookletcreator.com/files/BookletCreator-#{version}.dmg"
  name "BookletCreator"
  desc "This is a simple tool that allows you to create a booklet from a PDF document"
  homepage "https://www.bookletcreator.com/"

  livecheck do
    url "https://www.bookletcreator.com/update/bc-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "BookletCreator.app"
end
