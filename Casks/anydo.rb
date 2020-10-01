cask "anydo" do
  version "4.2.108"
  sha256 "162928cab8d1ca7f4e0d8176bf1c499506149cdb1de79e76a85e73cdf65658a5"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
