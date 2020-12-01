cask "anydo" do
  version "4.2.117"
  sha256 "9db706783bb4249d1120bb16ae66023515b0edf742fb0b493cdf7dabc3170138"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
