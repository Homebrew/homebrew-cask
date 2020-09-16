cask "eclipse-javascript" do
  version "4.17.0,2020-09:R"
  sha256 "49032b37c7195f4b9cd285c27b6652296c57c1f0f948bdec4dd09a748863c755"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for JavaScript and Web Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JavaScript.app"
end
