cask "eclipse-javascript" do
  version "4.21.0,2021-09:R"
  sha256 "16e412c92f115a900dd497d989c718bd6e315d6be7c9c6ac000139b8de56bd53"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for JavaScript and Web Developers"
  desc "Eclipse IDE for JavaScript and web developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse JavaScript.app"

  caveats do
    discontinued
  end
end
