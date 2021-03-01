cask "eclipse-javascript" do
  version "4.18.0,2020-12:R"
  sha256 "28869cc65cac7277d6afaa5d7deb49bd34884e6da6840e5df02dafa07b7babed"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for JavaScript and Web Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JavaScript.app"
end
