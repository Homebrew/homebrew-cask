cask "mindforger" do
  version "2.0.0-20240217.170738,5152"
  sha256 "8fa3b483ad8a0b6dea49a6e227d87922504de101d4f0c80c8c3310149925b423"

  url "https://github.com/dvorka/mindforger/releases/download/#{version.csv.first.split("-").first}/mindforger-#{version.csv.first}-qt#{version.csv.second}-intel.dmg",
      verified: "github.com/dvorka/mindforger/"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  livecheck do
    url :url
    regex(/^mindforger[._-]v?(\d+(?:[.-]\d+)+)-qt(\d+(?:[.-]\d+)*)-intel\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "mindforger.app"

  zap trash: [
    "~/.local/share/MindForger",
    "~/.mindforger.md",
    "~/Library/Application Support/MindForger",
    "~/Library/Saved Application State/com.yourcompany.mindforger.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
