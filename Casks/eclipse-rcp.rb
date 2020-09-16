cask "eclipse-rcp" do
  version "4.17.0,2020-09:R"
  sha256 "e970827bba5d96a8ffd0c4cf1c08497b4da2d69c314b3604317d68cb502c953a"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"
end
