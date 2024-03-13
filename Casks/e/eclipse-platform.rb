cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.31,202402290520"
  sha256 arm:   "c25a7bc1c2642499f6350f78fcf0bcf37789912975c5592d0ece254f1370165f",
         intel: "be6e6f9e0c0692d17dec62d4826ac0164a404ea3fb7c1d7e2a6caf7ce2712ca2"

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
    "~/eclipse-workspace",
    "~/Library/Preferences/org.eclipse.sdk.ide.plist",
  ]
end
