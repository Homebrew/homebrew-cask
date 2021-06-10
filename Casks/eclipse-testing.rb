cask "eclipse-testing" do
  version "4.18.0,2020-12:R"
  sha256 "f3882e04f5b84d714b234cc2868ef07b633f13e2a7ce2145796e9b067b603e0e"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse for Testers"
  desc "Eclipse IDE for testing purposes"
  homepage "https://eclipse.org/"

  livecheck do
    skip "Discontinued"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Testing.app"

  caveats do
    discontinued
  end
end
