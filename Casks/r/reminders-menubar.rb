cask "reminders-menubar" do
  version "2.1.0"
  sha256 "8e4f43e089849950f4631b121a8a4536352c457622ab7c1a4e36441d6303dff9"

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
