cask "eclipse-java" do
  version "4.18.0,2020-12:R"
  sha256 "c525f64da8d9eb4e8f890a0aff2d523f44699ae4ddb853e6254d0064e78aec73"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  homepage "https://eclipse.org/"

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
