cask "praat" do
  version "6.4.45,6445"
  sha256 "5b49c4e377b7bc3197dc0c591c5cb0c0c8f6bda6354cf7799a4af84ff54211aa"

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
