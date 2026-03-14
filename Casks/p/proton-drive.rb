cask "proton-drive" do
  version "2.10.3"
  sha256 "7ccf585786a66f6173aec359cf5b91c59c7c4db7aa4268a9f96618dd9afd213a"

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
  depends_on macos: ">= :ventura"

  app "Proton Drive.app"

  zap trash: [
    "~/Library/Application Scripts/ch.protonmail.drive*",
    "~/Library/Containers/ch.protonmail.drive*",
    "~/Library/Group Containers/group.ch.protonmail.protondrive",
  ]
end
