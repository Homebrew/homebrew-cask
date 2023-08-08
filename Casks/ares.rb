cask "ares" do
  version "133"
  sha256 "864af01a791534a0e06d793a236b7ee26e9e73d3772108832ed48ed2fb2f4148"

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
