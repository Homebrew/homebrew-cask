cask "elektron-transfer" do
  version "1.9.5,10,2024"
  sha256 "ff023c8bb6f51d41f09846a40794d666850b2e69dc7a9599c0b27720ec37ce45"

  url "https://elektron.se/wp-content/uploads/#{version.csv.third}/#{version.csv.second}/Elektron_Transfer_#{version.csv.first}.dmg"
  name "Elektron Transfer"
  desc "Transfer samples, presets, sounds, projects and firmware to Elektron devices"
  homepage "https://elektron.se/support-downloads/transfer"

  # The upstream website uses Cloudflare protections and the dmg file is
  # inaccessible outside of a browser, so this cask is effectively unusable.
  disable! date: "2025-11-01", because: :unreachable

  app "Transfer.app"

  zap trash: [
    "~/Library/Caches/se.elektron.OverbridgeTransfer",
    "~/Library/HTTPStorages/se.elektron.OverbridgeTransfer",
    "~/Library/Logs/Elektron Overbridge/Transfer.log",
    "~/Library/Saved Application State/se.elektron.OverbridgeTransfer.savedState",
  ]
end
