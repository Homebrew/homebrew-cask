cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.33.0,2024-09"
  sha256 arm:   "024fb687104ee9ead1ff3f769376cd95aeec5d39bb279a4dd615a301feedee66",
         intel: "9278f9be407b81d9bc4cba84f5895915c17395bf9d6d9058cd503aaf13d502c1"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.dsl.plist",
  ]
end
