cask "eclipse-modeling" do
  version "4.17.0,2020-09:R"
  sha256 "4121cfdf9390ff94fd1a2812cf3296c76f121ec4a3402e01aca514c58c8b2b0b"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse Modeling Tools"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"
end
