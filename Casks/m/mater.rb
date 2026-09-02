cask "mater" do
  version "3.0.1"
  sha256 "a535092df0f30d1dc677c55a8892e139384db447ada8c12b1f00008efd781300"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-v#{version}-macos.zip"
  name "Mater"
  desc "Menubar pomodoro app"
  homepage "https://github.com/jasonlong/mater"

  depends_on macos: :sonoma

  app "Mater.app"

  zap trash: [
    "~/Library/Application Support/mater",
    "~/Library/Preferences/com.electron.mater.plist",
    "~/Library/Saved Application State/com.electron.mater.savedState",
  ]
end
