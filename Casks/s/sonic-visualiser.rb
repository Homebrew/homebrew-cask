cask "sonic-visualiser" do
  version "5.2.1"
  sha256 "bb86819411875cc8128fc49c3899a3c419fba6ff8286ad145bdec02c4bd212f0"

  url "https://github.com/sonic-visualiser/sonic-visualiser/releases/download/sv_v#{version.csv.second || version.csv.first}/Sonic.Visualiser.#{version.csv.first}.dmg",
      verified: "github.com/sonic-visualiser/sonic-visualiser/"
  name "Sonic Visualiser"
  desc "Visualisation, analysis, and annotation of music audio recordings"
  homepage "https://www.sonicvisualiser.org/"

  livecheck do
    url :url
    regex(%r{/\D*(\d+(?:\.\d+)+)/Sonic[._-]?Visualiser[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "Sonic Visualiser.app"

  zap trash: [
    "~/Library/Application Support/sonic-visualiser",
    "~/Library/Preferences/org.sonicvisualiser.Sonic Visualiser.plist",
    "~/Library/Preferences/org.sonicvisualiser.SonicVisualiser.plist",
    "~/Library/Saved Application State/org.sonicvisualiser.SonicVisualiser.savedState",
  ]
end
