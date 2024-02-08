cask "reminders-menubar" do
  version "1.21.0"
  sha256 "9c6a410732ea140f3ba360b81d54c070539960752d1f220bef50f1b5c14497dd"

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
