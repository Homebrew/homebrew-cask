cask "anydo" do
  version "4.2.111"
  sha256 "b151f038bfeba92696d0bfdc3c1e360854c944fc50bb9f100b836b0dee08d5d5"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
