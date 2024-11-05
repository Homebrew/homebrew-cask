cask "ares" do
  version "141"
  sha256 "e5fca2c32c10c86125062d3740ff8188bb362233e289296770ee1efc80305ecd"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos-latest.zip",
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
