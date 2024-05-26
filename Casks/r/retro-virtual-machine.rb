cask "retro-virtual-machine" do
  version "2.1.13"
  sha256 "276066e6b7f4aecec0c478756cb35c214ebc5b9ae7307ae9453eb0549ca46612"

  url "https://static.retrovm.org/release/#{version}/RetroVirtualMachine.#{version}.dmg",
      verified: "static.retrovm.org/release/"
  name "Retro Virtual Machine"
  desc "ZX Spectrum and Amstrad CPC emulator"
  homepage "https://www.retrovirtualmachine.org/"

  livecheck do
    url "https://www.retrovirtualmachine.org/download/"
    regex(/RetroVirtualMachine[._-](\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Retro Virtual Machine #{version.major_minor}.app"

  zap trash: [
    "~/Library/Application Support/Retro Virtual Machine v#{version.major_minor}.x",
    "~/Library/Preferences/com.madeinalacant.RetroVirtualMachine#{version.major_minor}.plist",
  ]
end
