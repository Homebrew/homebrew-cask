cask "eclipse-cpp" do
  version "4.18.0,2020-12:R"
  sha256 "5a2d22ea7239ee7c4b20d6433fb77cbe8cfe3d55b2e5280615490de9098b8986"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"
end
