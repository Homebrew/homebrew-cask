cask "anydo" do
  version "4.2.141"
  sha256 "629369fac8f7f229817a2cd653f817c6ab8403f2b0587428cb0071d2a2b2fd54"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :page_match
    regex(/version: (\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
