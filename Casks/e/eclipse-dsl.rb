cask "eclipse-dsl" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.40,2026-06"
  sha256 arm:   "cfbb7b15020a501ca193a9a14fc5823e6b761d66283074324072b7010e47bcd8",
         intel: "26ffb095714ff1c226022e78144344fe20a93f0307583f54adc28f692b99237d"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  depends_on macos: :big_sur

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"

  zap trash: [
    "~/.eclipse",
    "~/eclipse-workspace",
    "~/Library/Preferences/epp.package.dsl.plist",
  ]
end
