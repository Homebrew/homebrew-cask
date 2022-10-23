cask "ares" do
  version "130.1"
  sha256 "34f80476cdc6acca4718e0af14171ab90193f6c5269d10b8443edf3d2f0f7558"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos.zip",
      verified: "https://github.com/ares-emulator/ares"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/ares\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
