cask "joshjon-nocturnal" do
  version "1.1.1"
  sha256 "5bc5c7c6231a4cc4c316335dfca57c0cc8964410e6b8898ae09120bbc8d98779"

  url "https://github.com/joshjon/nocturnal/releases/download/v#{version}/Nocturnal-#{version}.zip"
  name "Nocturnal"
  desc "Dimness and night shift menu bar app"
  homepage "https://github.com/joshjon/nocturnal"

  depends_on macos: ">= :high_sierra"

  app "Nocturnal.app"

  zap trash: "~/Library/Preferences/com.joshua.jon.Nocturnal.plist"
end
