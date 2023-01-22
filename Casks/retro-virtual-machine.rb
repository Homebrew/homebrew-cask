cask "retro-virtual-machine" do
  version "2.1.3"
  sha256 "e50ce86c058f62c87c365295b162b6e0d86273502afe05f0c9b225256911480c"

  url "https://static.retrovm.org/release/#{version}/RetroVirtualMachine.#{version}.dmg",
      verified: "static.retrovm.org/release/"
  name "Retro Virtual Machine"
  desc "ZX Spectrum and Amstrad CPC emulator"
  homepage "https://www.retrovirtualmachine.org/en/"

  livecheck do
    url "https://www.retrovirtualmachine.org/download"
    regex(/RetroVirtualMachine[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Retro Virtual Machine #{version.major_minor}.app"

  zap trash: [
    "~/Library/Application Support/Retro Virtual Machine v#{version.major_minor}.x",
    "~/Library/Preferences/com.madeinalacant.RetroVirtualMachine#{version.major_minor}.plist",
  ]
end
