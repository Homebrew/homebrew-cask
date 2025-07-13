cask "praat" do
  version "6.4.39,6439"
  sha256 "7e45a81b74d562f331898fb60e925b6979b795ad766a78cb7ffaffa3f7b4cda0"

  url "https://github.com/praat/praat/releases/download/v#{version.csv.first}/praat#{version.csv.second}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://praat.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/praat(\d+)[._-]mac\.dmg$}i)
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
