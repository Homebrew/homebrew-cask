cask "macdirstat" do
  version "0.2.0"
  sha256 "564bec6471f1854d8c81fe0c36fbc5349be5564ee631b38c61faa4ce308fe80e"

  url "https://github.com/phalladar/MacDirStat/releases/download/v#{version}/MacDirStat.zip"
  name "MacDirStat"
  desc "Disk space analyzer inspired by WinDirStat"
  homepage "https://github.com/phalladar/MacDirStat"

  depends_on macos: :sequoia

  app "MacDirStat.app"

  zap trash: "~/Library/Preferences/io.github.phalladar.MacDirStat.plist"
end
