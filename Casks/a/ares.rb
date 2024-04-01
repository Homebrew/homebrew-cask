cask "ares" do
  version "137"
  sha256 "122789ed8815d7466e4dff7b77e7215e5d9ae6b34d99069743da7e58d0117902"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos.zip",
      verified: "github.com/ares-emulator/ares/"
  name "ares"
  desc "Cross-platform, multi-system emulator, focusing on accuracy and preservation"
  homepage "https://ares-emu.net/"

  livecheck do
    url :homepage
    regex(/ares\sv?(\d+(?:\.?\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "ares-v#{version}/ares.app"

  zap trash: [
    "~/Library/Application Support/ares",
    "~/Library/Saved Application State/dev.ares.ares.savedState",
  ]
end
