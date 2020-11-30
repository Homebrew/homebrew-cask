cask "anydo" do
  version "4.2.116"
  sha256 "1b515786cea7ea8c648b02300f6e9a2cfe0f3ddbd1369c931d7e51dea84f343d"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
