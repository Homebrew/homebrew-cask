cask "retro-virtual-machine" do
  version "2.1.15"
  sha256 "a9ccc25c9e2cec2560e0d592f3ae2ec2c603448df7fcb288038d029e7cb9af97"

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
