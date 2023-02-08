cask "ares" do
  version "131"
  sha256 "62ffe2d3b5cafbc77645365c6229218720190126c57ffbddab19d4fcf8066db2"

  url "https://github.com/ares-emulator/ares/releases/download/v#{version}/ares-macos.zip",
      verified: "https://github.com/ares-emulator/ares"
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
