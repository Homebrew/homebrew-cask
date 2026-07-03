cask "reminders-menubar" do
  version "2.1.1"
  sha256 "1eafb0ef195f61c7e72823899b3ac031a7e6fc4967b56a459b2a78cd5a1795a1"

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
