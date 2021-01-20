cask "anydo" do
  version "4.2.130"
  sha256 "e3d47c92bcabc1fe053a7fef16790139ea7ff50386f909996367f5af81db667f"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
