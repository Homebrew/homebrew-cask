cask "macdirstat" do
  version "0.3.0"
  sha256 "727e3e8a85642d60479153c31a472f6596f045faa037781236c3f401f16e1980"

  url "https://github.com/phalladar/MacDirStat/releases/download/v#{version}/MacDirStat.zip"
  name "MacDirStat"
  desc "Disk space analyser"
  homepage "https://github.com/phalladar/MacDirStat"

  depends_on macos: :sequoia

  app "MacDirStat.app"

  zap trash: "~/Library/Preferences/io.github.phalladar.MacDirStat.plist"
end
