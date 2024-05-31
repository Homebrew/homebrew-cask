cask "retro-virtual-machine" do
  version "2.1.14"
  sha256 "2461dbf018402d10ba9e45d1bdb0b700e7258c87c4b135e05ede0917ca488264"

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
