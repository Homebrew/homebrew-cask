cask "tolaria" do
  arch arm: "Silicon", intel: "Intel"

  version "2026.06.10,2026.6.10"
  sha256 arm:   "fc763b2eb3d37f80ae3fceb95a64a0ebedf17e054b5d7236cd9e4867af439a61",
         intel: "77ea0e745343948f16a0bbeff8603f1d860c7c3f41fcd174fa29d930e32fca86"

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
