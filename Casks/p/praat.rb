cask "praat" do
  version "6.4.52,6452"
  sha256 "b2318984debadadaaff353d9aaa6379e473ee75235906868e87dbab4534cf5e6"

  url "https://github.com/praat/praat.github.io/releases/download/v#{version.csv.first}/praat#{version.csv.second}_mac.dmg",
      verified: "github.com/praat/praat.github.io/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://praat.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+[a-z]?)/praat(\d+)[._-]mac\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"

  zap trash: [
    "~/Library/Preferences/Praat Prefs",
    "~/Library/Saved Application State/org.praat.Praat.savedState",
  ]
end
