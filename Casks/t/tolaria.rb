cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.06.26,2026.6.26"
  sha256 arm:   "ab1aec880c24f9abadb3a976de1f8014e6fd68834b1882c0619454de82dcafab",
         intel: "8e7ddd3d6eaad35d18782ffa473d090fb7eba149d512fcd43d23034ecd0b1a12"

  url "https://github.com/refactoringhq/tolaria/releases/download/v#{version.csv.first.dots_to_hyphens}/Tolaria_#{version.csv.second || version}_macOS_#{arch}.dmg",
      verified: "github.com/refactoringhq/tolaria/"
  name "Tolaria"
  desc "Markdown knowledgebase manager"
  homepage "https://tolaria.md/"

  # The version formatting in the tag name can be inconsistent
  # with the version in the asset name, so we need to compare
  # both and return them in the version if they don't match.
  livecheck do
    url :url
    regex(/Tolaria[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.dmg/i)
    strategy :github_latest do |json, regex|
      tag_version = json["tag_name"]&.tr("-", ".")&.gsub(/^v/, "")
      next if tag_version.blank?

      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        (match[1] == tag_version) ? tag_version : "#{tag_version},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "Tolaria.app"

  zap trash: [
    "~/Library/Application Support/com.tolaria.app",
    "~/Library/Caches/club.refactoring.tolaria",
    "~/Library/Preferences/club.refactoring.tolaria.plist",
    "~/Library/WebKit/club.refactoring.tolaria",
  ]
end
