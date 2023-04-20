cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.27,202303020300"
  sha256 arm:   "22409543fed3086203445aa285f2658639f2b8b715e54cb57d00fc4c618bbff2",
         intel: "7b7d1315528331141a024737e7af9e2d1b12505be813de14776cce7c88ae8832"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse SDK"
  desc "SDK for the Eclipse IDE"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://download.eclipse.org/eclipse/downloads/"
    regex(%r{href=.*/R-(\d+(?:\.\d+)*)-(\d+)/}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"

  zap trash: [
    "~/.eclipse",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
    "~/eclipse-workspace",
  ]
end
