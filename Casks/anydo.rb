cask "anydo" do
  version "4.2.104"
  sha256 "be3c24e81a86a5f5bda33b0ec8bba94abeca8d50bf9907d8bd1ca864bd7f6fb3"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
