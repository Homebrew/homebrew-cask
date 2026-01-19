cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.26.1,260119t8biwc2dm"
  sha256 arm:   "4c687ed4904ed902eee9fb6da019f54af9478e1807190ed908d57d5929ce399f",
         intel: "3057b8013bcbd4fe89ae2fac94d09f6dddbda7a73597507b1e925c66af410d17"

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
