cask "devbook" do
  version "0.1.11"
  sha256 :no_check

  url "https://download.usedevbook.com/mac/dmg/x64"
  name "Devbook"
  desc "Search engine for developers"
  homepage "https://usedevbook.com/"

  livecheck do
    url "https://download.todesktop.com/2102273jsy18baz/latest-mac.yml"
    strategy :page_match
    regex(/version:.(\d+(?:\.\d+)*)/)
  end

  app "Devbook.app"

  zap trash: "~/Library/Application Support/com.foundrylabs.devbook/*"
end
