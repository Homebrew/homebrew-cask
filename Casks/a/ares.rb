cask "ares" do
  version "139"
  sha256 "8d9021af43b2c2b45ed5086f2d414d39f3f3aef710cff97a61fde657a88b1f9a"

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
