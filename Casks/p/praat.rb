cask "praat" do
  version "7.0.01,7001"
  sha256 "8a7e579ef15e02964ca81a8d23973e3766dc883835d610ea467b33448dafdeaf"

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

  depends_on :macos

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"

  zap trash: [
    "~/Library/Preferences/Praat Prefs",
    "~/Library/Saved Application State/org.praat.Praat.savedState",
  ]
end
