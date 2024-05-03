cask "ares" do
  version "138"
  sha256 "6ca39e1e2b12bcd11a60ccef79d2300fde421ddc0d853b6841cb877a4909bee0"

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
