cask "reminders-menubar" do
  version "2.0.0"
  sha256 "7c71704fb79ac4488bf88edc43df8e0cff08bfadbefecf378c14df6bd21f93f9"

  url "https://github.com/DamascenoRafael/reminders-menubar/releases/download/v#{version}/reminders-menubar.zip"
  name "Reminders MenuBar"
  desc "Simple menu bar app to view and interact with reminders"
  homepage "https://github.com/DamascenoRafael/reminders-menubar"

  auto_updates true
  depends_on macos: :big_sur

  app "Reminders MenuBar.app"

  uninstall quit: "br.com.damascenorafael.reminders-menubar"

  zap trash: [
    "~/Library/Application Scripts/br.com.damascenorafael.reminders-menubar",
    "~/Library/Application Scripts/br.com.damascenorafael.reminders-menubar-launcher",
    "~/Library/Application Scripts/br.com.damascenorafael.RemindersLauncher",
    "~/Library/Containers/br.com.damascenorafael.reminders-menubar",
    "~/Library/Containers/br.com.damascenorafael.reminders-menubar-launcher",
    "~/Library/Containers/br.com.damascenorafael.RemindersLauncher",
  ]
end
