cask "texworks" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "0.6.10,202502131353,7380941"
    sha256 "813964827bbea219f7f05d7a03c76260162010bebc70746ccce60c77a3537b24"
  end
  on_intel do
    version "0.6.10,202502131354,7380941"
    sha256 "c0561bd2bf185a7783ae201af041506cf634fcb373c58027a5c203abada8ead0"
  end

  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.csv.first}/TeXworks-macos11-#{version.csv.first}-#{arch}-#{version.csv.second}-git_#{version.csv.third}.dmg",
      verified: "github.com/TeXworks/texworks/"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  livecheck do
    url :url
    regex(/^TeXworks[._-]macos11[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-](\d+)[._-]git[._-](.*?)\.dmg$/i)
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
