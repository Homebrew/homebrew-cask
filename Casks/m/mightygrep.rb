cask "mightygrep" do
  version "0.14.0"
  sha256 "4878a396c356cff72cf23596bc98ae6c587e185b032edd8a0f2d5c7baf033253"

  url "https://github.com/kyle-sylvestre/mightygrep-misc/releases/download/#{version}/mightygrep-macos.dmg",
      verified: "github.com/kyle-sylvestre/mightygrep-misc/"
  name "MightyGrep"
  desc "Fast file searching in a GUI"
  homepage "https://ksylvestre.itch.io/mightygrep"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "MightyGrep Demo.app"

  zap trash: [
    "~/Library/Application Support/MightyGrep",
    "~/Library/Preferences/mightygrep.plist",
  ]
end
