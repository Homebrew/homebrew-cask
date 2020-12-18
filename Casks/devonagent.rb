cask "devonagent" do
  version "3.11.4"
  sha256 "96cd6d4b7a9912ef0196246c25cb516d095657700ad062627d1d56a682c4c75c"

  url "https://download.devontechnologies.com/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast "https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193"
  name "DEVONagent Pro"
  desc "Tool to help searching the web more efficiently"
  homepage "https://www.devontechnologies.com/apps/devonagent"

  auto_updates true

  app "DEVONagent.app"
end
