cask "anydo" do
  version "4.2.115"
  sha256 "a3b755e9664be7a1b16f4f93cf468583c6f8b03ffcf320293aa9ef3d66a798f5"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
