cask "anydo" do
  version "4.2.125"
  sha256 "5e5a1e4bd341f8c6b12eba59ef6b0f51e0c668fd1c09f0cab598fada23565e35"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
