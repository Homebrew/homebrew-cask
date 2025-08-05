cask "reminders-menubar" do
  version "1.25.0"
  sha256 "56ce91ee4148af571200dfb7af9dc8724a0ec4b764377aac4f233c2ede429d6b"

  url "https://github.com/DamascenoRafael/reminders-menubar/releases/download/v#{version}/reminders-menubar.zip"
  name "Reminders MenuBar"
  desc "Simple menu bar app to view and interact with reminders"
  homepage "https://github.com/DamascenoRafael/reminders-menubar"



  depends_on macos: ">= :big_sur"

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
