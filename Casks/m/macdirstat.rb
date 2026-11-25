cask "macdirstat" do
  version "0.4.1"
  sha256 "3e81a72aae518af6b6611bfe383f255846b929b4f65eb3b2f3c9d0e7d73b56cf"

  url "https://github.com/phalladar/MacDirStat/releases/download/v#{version}/MacDirStat.zip"
  name "MacDirStat"
  desc "Disk space analyser"
  homepage "https://github.com/phalladar/MacDirStat"

  depends_on macos: :sequoia

  app "MacDirStat.app"

  zap trash: "~/Library/Preferences/io.github.phalladar.MacDirStat.plist"
end
