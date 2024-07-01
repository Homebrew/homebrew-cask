cask "elektron-transfer" do
  version "1.8.10"
  sha256 "11002ad64daecd585a0f27219c1c97e2fa944fa79d2311f2897977f4577d1480"

  url "https://cdn.www.elektron.se/media/downloads/transfer/Elektron_Transfer_#{version.csv.first}.dmg"
  name "Elektron Transfer"
  desc "Transfer samples, presets, sounds, projects and firmware to Elektron devices"
  homepage "https://www.elektron.se/en/download-support-transfer"

  livecheck do
    url :homepage
    regex(/Elektron[._-]Transfer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Transfer.app"

  zap trash: [
    "~/Library/Caches/se.elektron.OverbridgeTransfer",
    "~/Library/HTTPStorages/se.elektron.OverbridgeTransfer",
    "~/Library/Logs/Elektron Overbridge/Transfer.log",
    "~/Library/Saved Application State/se.elektron.OverbridgeTransfer.savedState",
  ]
end
