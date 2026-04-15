cask "mater" do
  version "3.0.0"
  sha256 "7aaa096ab307da5123641f9238083c413de3929625cf1ecd1cd080814ce855ff"

  url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-v#{version}-macos.zip"
  name "Mater"
  desc "Menubar pomodoro app"
  homepage "https://github.com/jasonlong/mater"

  depends_on macos: ">= :sonoma"

  app "Mater.app"

  zap trash: [
    "~/Library/Application Support/mater",
    "~/Library/Preferences/com.electron.mater.plist",
    "~/Library/Saved Application State/com.electron.mater.savedState",
  ]
end
