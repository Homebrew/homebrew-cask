cask "texworks" do
  version "0.6.8,202302181247,6b1c6ab"
  sha256 "9c7585bb2dc3ecf7f190d1af09d063801f912d7be8825e503bd11d69f2f3081e"

  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.csv.first}/TeXworks-macos10.15-#{version.csv.first}-#{version.csv.second}-git_#{version.csv.third}.dmg",
      verified: "github.com/TeXworks/texworks/"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  livecheck do
    url :url
    regex(/^TeXworks-macos10.15[._-]v?(\d+(?:\.\d+)+)-(\d+)-git_(.*?)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "TeXworks.app"

  zap trash: "~/Library/Preferences/org.tug.TeXworks.plist"
end
