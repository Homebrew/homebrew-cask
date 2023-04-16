cask "reminders-menubar" do
  version "1.17.0"
  sha256 "e3fdf46b3fc339bde71a14296f544c74ca099058d3845e86aca0d2fdcf8557fe"

  url "https://github.com/DamascenoRafael/reminders-menubar/releases/download/v#{version}/reminders-menubar.zip"
  name "Reminders MenuBar"
  desc "Simple menu bar app to view and interact with reminders"
  homepage "https://github.com/DamascenoRafael/reminders-menubar"

  depends_on macos: ">= :big_sur"

  app "Reminders MenuBar.app"

  postflight do
    application = "#{appdir}/Reminders MenuBar.app"
    if system_command("ps", args: ["x"]).stdout.match?(application)
      system_command "/usr/bin/pkill", args: ["-f", application], must_succeed: false
      system_command "/usr/bin/open", args: ["-a", application], must_succeed: false
    end
  end

  zap trash: [
    "~/Library/Application Scripts/br.com.damascenorafael.reminders-menubar",
    "~/Library/Application Scripts/br.com.damascenorafael.RemindersLauncher",
    "~/Library/Containers/br.com.damascenorafael.reminders-menubar",
    "~/Library/Containers/br.com.damascenorafael.RemindersLauncher",
  ]
end
