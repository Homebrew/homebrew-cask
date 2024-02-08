cask "pathephone" do
  version "2.2.1"
  sha256 "94f11a3dfd047aff65fa15430a127e07d733518dd39618a15344fc4738a74806"

  url "https://github.com/pathephone/pathephone-desktop/releases/download/v#{version}/Pathephone-#{version}.dmg",
      verified: "github.com/pathephone/pathephone-desktop/"
  name "Pathephone"
  desc "Distributed audio player"
  homepage "https://pathephone.github.io/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Pathephone.app"

  zap trash: [
    "~/Library/Application Support/Pathephone",
    "~/Library/Logs/Pathephone",
    "~/Library/Preferences/space.metabin.pathephone.helper.plist",
    "~/Library/Preferences/space.metabin.pathephone.plist",
    "~/Library/Saved Application State/space.metabin.pathephone.savedState",
  ]
end
