cask "dbeaverteam" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.2.0"
  sha256 arm:   "84a29cae302cf698ba3da92fa584a7636adf356110d1606ab49757d499d6e92b",
         intel: "1f7f43217443533de1eb73a2f834ed94526f1e130dfa1b419720ad0d9d774dfe"

  url "https://downloads.dbeaver.net/team/#{version}/dbeaver-te-#{version}-macos-#{arch}.dmg"
  name "DBeaver Team Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-team-edition"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-te-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on :macos

  app "DBeaverTeam.app"

  uninstall signal: ["TERM", "com.dbeaver.product.team"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.team.plist",
    "~/Library/Saved Application State/com.dbeaver.product.team.savedState",
  ]
end
