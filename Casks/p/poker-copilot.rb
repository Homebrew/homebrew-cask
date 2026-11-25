cask "poker-copilot" do
  version "8.27,11132"
  sha256 "de62a2d280eb898a0a814cd86a72245ca6b43cda0700dbf1b7b02273870c44cb"

  url "https://static.pokercopilot.com/pokercopilot_macos_universal_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url "https://pokercopilot.com/download?installer=osx-universal"
    regex(/pokercopilot_macos_universal[._-]v?(\d+(?:[._]\d+)+)[._-]build[._-](\d+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      release_version = match[1].tr("_", ".")
      "#{release_version},#{match[2]}"
    end
  end

  depends_on :macos

  app "Poker Copilot.app"

  zap trash: [
    "~/Library/Application Support/com.barbarysoftware.pokercopilot",
    "~/Library/Logs/Poker Copilot.log",
    "~/Library/Preferences/com.install4j.4318-8431-7919-3424.23.plist",
  ]
end
