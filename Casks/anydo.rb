cask "anydo" do
  version "4.2.110"
  sha256 "d0bab48ff17eddf8fb5d12979b400055c4f5c73797d6469f8cbc32b0aebfb991"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
