cask "eclipse-javascript" do
  version "4.18.0,2020-12"
  sha256 "28869cc65cac7277d6afaa5d7deb49bd34884e6da6840e5df02dafa07b7babed"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-javascript-#{version.csv.second}-R-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for JavaScript and Web Developers"
  desc "Eclipse IDE for JavaScript and web developers"
  homepage "https://eclipse.org/"

  deprecate! date: "2023-12-17", because: :discontinued

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JavaScript.app"
end
