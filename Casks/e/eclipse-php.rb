cask "eclipse-php" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.40,2026-06"
  sha256 arm:   "dc29e8657115f008a7a72b843fd5e2ea51483df4285d2fe6f28f101521e898c8",
         intel: "c1b4828af2156b3844ec31794d9ab1ddd02db7d77085c06e4dce68c2481babde"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-php-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for PHP Developers"
  desc "Eclipse IDE for PHP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: :big_sur

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse PHP.app"

  zap trash: [
    "~/Library/Preferences/org.eclipse.platform.ide.plist",
    "~/Library/Saved Application State/org.eclipse.platform.ide.savedState",
  ]
end
