cask "retro-virtual-machine" do
  version "2.1.6"
  sha256 "cde283987001b00170e4b2238bda0ef961adc66578c14c7fc210cba6a74440c2"

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
