cask "dbeaverteam" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "cff721607c32bd852261018d6e72e6e9c5bafaf286703983b10651bc355f9159",
         intel: "ca1df9960173c16d78930475589855379f71b28b94c09adaf6c059f2be8b0fe3"

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

  depends_on macos: :big_sur

  app "DBeaverTeam.app"

  uninstall signal: ["TERM", "com.dbeaver.product.team"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.team.plist",
    "~/Library/Saved Application State/com.dbeaver.product.team.savedState",
  ]
end
