cask "proton-drive" do
  version "3.0.3"
  sha256 "e89c467632a91815d5edace10917f8db19a712d7c44dbcc0dbf167b274e63951"

  url "https://proton.me/download/drive/macos/#{version}/ProtonDrive-#{version}.dmg"
  name "Proton Drive"
  desc "Client for Proton Drive"
  homepage "https://proton.me/drive"

  # The appcast publishes versions in `gradual-rollout` and `stable` channals.
  # The upstream download page serves the `stable` version, so we track the
  # `stable` channel.
  livecheck do
    url "https://proton.me/download/drive/macos/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "stable" }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Proton Drive.app"

  uninstall launchctl: "ch.protonmail.drive.agent"

  zap trash: [
    "~/Library/Application Scripts/ch.protonmail.drive*",
    "~/Library/Application Support/FileProvider/ch.protonmail.drive.fileprovider",
    "~/Library/Containers/ch.protonmail.drive*",
    "~/Library/Group Containers/*ch.protonmail.protondrive",
    "~/Library/Preferences/ch.protonmail.drive*",
  ]
end
