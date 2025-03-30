cask "reminders-menubar" do
  version "1.24.0"
  sha256 "79fc0099410414fec3c07818f9631b6c1f8651c74b6c42cb2c4393972608a5ce"

  url "https://github.com/DamascenoRafael/reminders-menubar/releases/download/v#{version}/reminders-menubar.zip"
  name "Reminders MenuBar"
  desc "Simple menu bar app to view and interact with reminders"
  homepage "https://github.com/DamascenoRafael/reminders-menubar"

  depends_on macos: ">= :big_sur"

  app "Reminders MenuBar.app"

  uninstall quit: "br.com.damascenorafael.reminders-menubar"

  zap trash: [
    "~/Library/Application Scripts/br.com.damascenorafael.reminders-menubar",
    "~/Library/Application Scripts/br.com.damascenorafael.RemindersLauncher",
    "~/Library/Containers/br.com.damascenorafael.reminders-menubar",
    "~/Library/Containers/br.com.damascenorafael.RemindersLauncher",
  ]
end
