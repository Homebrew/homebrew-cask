cask "dbeaverteam" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.0"
  sha256 arm:   "541161f7be2521bed3ee71d10e0647d0715c51bade68eedca4c352c0684a752b",
         intel: "f1ea64ce76cdfe0f1be29fde0c0bf814b7a7f0e963eb2b8e0afe29604bbfd6ea"

  url "https://downloads.dbeaver.net/team/#{version}/dbeaver-te-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/team/"
  name "DBeaver Team Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-team-edition"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-te-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: ">= :big_sur"

  app "DBeaverTeam.app"

  uninstall signal: ["TERM", "com.dbeaver.product.team"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.team.plist",
    "~/Library/Saved Application State/com.dbeaver.product.team.savedState",
  ]
end
