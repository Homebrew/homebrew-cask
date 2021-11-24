cask "eclipse-testing" do
  version "4.21.0,2021-09:R"
  sha256 "ad167befe1e88df397c50cac7a3ad9fa894720810f80118b3ea0fa3666cd263b"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse for Testers"
  desc "Eclipse IDE for testing purposes"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Testing.app"

  caveats do
    discontinued
  end
end
