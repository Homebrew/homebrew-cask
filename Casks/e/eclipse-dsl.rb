cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "e6cf131bd053fb4db8953d2dac50292742410b59345fb7f5085749751ea7c6cf",
         intel: "7ac79e5ce76209dd7575003eeb159dcaa0f497b75818d1da12d7fbec02358b47"

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
