cask "ares" do
  version "140"
  sha256 "650811f5dbe3c73a2b20ecf92b17093c9ba4bc87611481b549eaeabb3dd31771"

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
