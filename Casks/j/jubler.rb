cask "jubler" do
  arch arm: "arm64", intel: "x86_64"

  version "10.0.0"
  sha256 arm:   "68b241a9fa4dd1d1d9c747871664d506be01df9fdd8b683976ed5cf107fc9ccb",
         intel: "3f8fabd5195a65c0c1a82e4b95d6bf76de83cc2796fe42ea554f433464dfaeca"

  url "https://github.com/teras/Jubler/releases/download/v#{version}/Jubler-#{version}-#{arch}.dmg",
      verified: "github.com/teras/Jubler/"
  name "Jubler"
  desc "Subtitle editor"
  homepage "https://www.jubler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Jubler.app"

  zap trash: [
    "~/Library/Application Support/Jubler",
    "~/Library/Preferences/com.panayotis.jubler.config",
    "~/Library/Preferences/com.panayotis.jubler.config.old",
    "~/Library/Preferences/com.panayotis.jubler.plist",
  ]
end
