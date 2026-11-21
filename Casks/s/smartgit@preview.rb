cask "smartgit@preview" do
  arch arm: "arm64", intel: "x86_64"

  version "26.2.024,rc"
  sha256 arm:   "acb97f5e4be50cea4aaf6b966f213cf961dd20ecd5f842c883d0d775d5554515",
         intel: "319c01b81250d8aa99813b18577fb9bd832519dd880c97a6a28db1072a429db1"

  url "https://download.smartgit.dev/smartgit/smartgit-#{version.csv.first.dots_to_underscores}-#{version.csv.second}-macos-#{arch}.dmg"
  name "SmartGit"
  desc "Git client"
  homepage "https://www.smartgit.dev/"

  livecheck do
    url "https://www.smartgit.dev/download/preview/"
    regex(/href=.*?smartgit[._-]v?(\d+(?:[._]\d+)+)[._-](preview|rc)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  conflicts_with cask: "smartgit"
  depends_on :macos

  app "SmartGit.app"
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartgit.plist",
    "~/Library/Preferences/SmartGit",
    "~/Library/Saved Application State/com.syntevo.smartgit.savedState",
  ]
end
