cask "eclipse-platform" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.33,202409030240"
  sha256 arm:   "4a4f69e3f393c6dec453652bd3927d1f95c1910f606fae19ab82393496737301",
         intel: "bcceebed73647ee7fcf672747ff42837e60442dcad71dcf6e762a8460446842b"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.csv.first}-#{version.csv.second}/eclipse-SDK-#{version.csv.first}-macosx-cocoa-#{arch}.dmg&mirror_id=1"
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
