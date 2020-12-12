cask "eclipse-ide" do
  version "4.17.0,2020-09:R"
  sha256 "7a81d0fe2e4991a19e4c5163131e9d7c15da9625f590c1e11a71cce9af62cac7"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  homepage "https://eclipse.org/"

  app "Eclipse.app"
end
