cask "eclipse-testing" do
  version "4.17.0,2020-09:R"
  sha256 "e16ecbea12c3a71f64aa5f1bc16076563f1e1e62e84bd96b930e051fdd22b4b2"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse for Testers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Testing.app"
end
