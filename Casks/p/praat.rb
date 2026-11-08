cask "praat" do
  version "7.0.03,7003"
  sha256 "5a8eda57682cd16ec38ebd0461bb5e699b30ba2e25fe135ba3847961d8e4fdbb"

  url "https://github.com/praat/praat.github.io/releases/download/v#{version.csv.first}/praat#{version.csv.second}_mac.dmg"
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

  depends_on :macos

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"

  zap trash: [
    "~/Library/Preferences/Praat Prefs",
    "~/Library/Saved Application State/org.praat.Praat.savedState",
  ]
end
