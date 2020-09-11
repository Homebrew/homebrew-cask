cask "oni" do
  version "0.3.9"
  sha256 "c1b6e0fcce1a69d6460197158d8e087496199a3d8368901b452ee214eab039c4"

  # github.com/onivim/oni/ was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast "https://github.com/onivim/oni/releases.atom"
  name "Oni"
  desc "Modal text editor powered by Neovim"
  homepage "https://www.onivim.io/"

  app "Oni.app"
  binary "#{appdir}/Oni.app/Contents/Resources/app/cli/mac/oni.sh", target: "oni"

  zap trash: [
    "~/.oni",
    "~/Library/Application Support/oni",
    "~/Library/Preferences/com.extropy.oni.helper.plist",
    "~/Library/Preferences/com.extropy.oni.plist",
    "~/Library/Saved Application State/com.extropy.oni.savedState",
  ]
end
