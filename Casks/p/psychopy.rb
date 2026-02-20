cask "psychopy" do
  version "2026.1.0"
  sha256 "37ae9fe703894d14280cf163fc155fe442c46ca354487583ff66322e8b9e90cc"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.csv.first.major_minor_patch}/StandalonePsychoPy-#{version.csv.first}-macOS#{"_#{version.csv.second}" if version.csv.second}-3.10.dmg",
      verified: "github.com/psychopy/psychopy/"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://www.psychopy.org/"

  livecheck do
    url "https://www.psychopy.org/download.html"
    regex(/StandalonePsychoPy[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]?(\d+(?:[._-]\d+)+)?[._-](?:py)?3\.10\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  app "PsychoPy.app"

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
