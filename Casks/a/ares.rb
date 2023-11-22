cask "ares" do
  version "134"
  sha256 "0e53d311084ddbc4b77ed9d3fcfcaea0806789d9077e63d5cdb85087fe002942"

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
