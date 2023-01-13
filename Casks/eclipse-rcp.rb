cask "eclipse-rcp" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26.0,2022-12"
  sha256 arm:   "6fed5e99c00dd8983250fcf574a7b2dd02f1b50160e9372176516d294dce34a8",
         intel: "48294872e93ba0a8500e08d694ae5b724e61d5364c9e7b269c0f65475eb3e116"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"
end
