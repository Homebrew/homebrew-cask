cask "eclipse-ide" do
  version "4.18.0,2020-12:R"
  sha256 "c4e9fa309f869ef398036251b79b6d2457f62d15e9d9931c4a54bbd65880e99f"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  homepage "https://eclipse.org/"

  app "Eclipse.app"
end
