cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.25.5,251223yanwonivt"
  sha256 arm:   "06004243fa8a5513c5cbefeb0785f23a0a0e687647eb6bfaf6967129a2cb44b3",
         intel: "6adc8959f535c3ba4ca82f8337e4939241927c4f495792deb209d9f0a65fef1a"

  url "https://download.todesktop.com/25112796k32u7/Conar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/25112796k32u7/"
  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app/"

  livecheck do
    url "https://download.todesktop.com/25112796k32u7/latest-mac.yml"
    regex(/Conar\s*v?(\d+(?:\.\d+)+)\s*-?\s*(?:Build\s*([a-z\d]+?)[._-])?#{arch}[._-]mac\.zip/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Conar.app"

  zap trash: [
    "~/Library/Application Support/Conar",
    "~/Library/Logs/Conar",
    "~/Library/Preferences/com.wannabespace.conar.plist",
    "~/Library/Saved Application State/com.wannabespace.conar.savedState",
  ]
end
