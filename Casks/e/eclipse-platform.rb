cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.29,202309031000"
  sha256 arm:   "558a73cf699408d1c81810543929878766c9ac722b11036d7ca99f693a838df9",
         intel: "8d78e825332bd99a1a5ff88c2f595949d0a62e33f7e6485c0e475ab07121d611"

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
