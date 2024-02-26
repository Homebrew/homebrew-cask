cask "texworks" do
  version "0.6.9,202402120642,68a2e99"
  sha256 "470cf77767cca7efff47ca0514b4fb0318c9bf15d4242065678fe4e55a9f1456"

  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.csv.first}/TeXworks-macos11-#{version.csv.first}-#{version.csv.second}-git_#{version.csv.third}.dmg",
      verified: "github.com/TeXworks/texworks/"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  livecheck do
    url :url
    regex(/^TeXworks-macos11[._-]v?(\d+(?:\.\d+)+)-(\d+)-git_(.*?)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "TeXworks.app"

  zap trash: "~/Library/Preferences/org.tug.TeXworks.plist"
end
