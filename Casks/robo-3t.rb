cask "robo-3t" do
  version "1.4.3,48f7dfd"
  sha256 "bb118c609aa819f78eed2e167b7a5393f6a6bd50e262a157e231869d4916e5a5"

  url "https://download.studio3t.com/robomongo/mac/robo3t-#{version.before_comma}-darwin-x86_64-#{version.after_comma}.dmg",
      verified: "download.studio3t.com/"
  name "Robo 3T (formerly Robomongo)"
  desc "MongoDB management tool"
  homepage "https://robomongo.org/"

  # We need to check all releases since the current latest release is a beta version.
  livecheck do
    url "https://github.com/Studio3T/robomongo/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*)/robo3t-\1-darwin-x86_64-([0-9a-f]+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Robo 3T.app"

  uninstall quit: "Robo 3T"

  zap trash: [
    "~/.3T/robo-3t/",
    "~/Library/Saved Application State/Robo 3T.savedState",
  ]
end
