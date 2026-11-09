cask "poker-copilot" do
  version "8.26,10713"
  sha256 "567041445eea569ba0f3017ec7b234c026a4791b916aca539c1be8a5951333e0"

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

      "#{match[1].tr("_", ".")},#{match[2]}"
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
