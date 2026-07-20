cask "proton-drive" do
  version "3.0.0"
  sha256 "b8c2b8b86b9c526c02c327bd27d25b279ce60ed96154f4ed304402f2e911647f"

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

  zap trash: [
    "~/Library/Application Scripts/ch.protonmail.drive*",
    "~/Library/Application Support/FileProvider/ch.protonmail.drive.fileprovider",
    "~/Library/Containers/ch.protonmail.drive*",
    "~/Library/Group Containers/*ch.protonmail.protondrive",
    "~/Library/Preferences/ch.protonmail.drive*",
  ]
end
