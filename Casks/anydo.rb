cask "anydo" do
  version "4.2.106"
  sha256 "145be6edd1ac5edfffaeeef8b02a2fb82a9499462d4fad57c878fb8b836cc6b7"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
