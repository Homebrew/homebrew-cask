cask "reminders-menubar" do
  version "2.2.0"
  sha256 "2187c4bac005359fcca53f599ce45bb6ef20b62196ada4cf5fdf62aee203c907"

  url "https://github.com/DamascenoRafael/reminders-menubar/releases/download/v#{version}/reminders-menubar.zip"
  name "Reminders MenuBar"
  desc "Simple menu bar app to view and interact with reminders"
  homepage "https://github.com/DamascenoRafael/reminders-menubar"

  auto_updates true
  depends_on macos: :monterey

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
