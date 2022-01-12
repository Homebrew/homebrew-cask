cask "retro-virtual-machine" do
  version "2.0,1.r7"
  sha256 "75e94f2df589ead3fb1eab529713312a17dc16e6b2ba547594cd9d5975def566"

  url "https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta#{version.csv.second.major}/macos/RetroVirtualMachine.#{version.csv.first}.beta-#{version.csv.second}.macos.dmg",
      verified: "retrovirtualmachine.ams3.digitaloceanspaces.com/"
  name "Retro Virtual Machine"
  desc "ZX Spectrum and Amstrad CPC emulator"
  homepage "https://www.retrovirtualmachine.org/en/"

  livecheck do
    url "https://www.retrovirtualmachine.org/en/downloads"
    strategy :page_match do |page|
      match = page.match(/RetroVirtualMachine\.(\d+(?:\.\d+)*)\.beta-(\d+(?:\..\d+)*)\.macos\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Retro Virtual Machine #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Retro Virtual Machine v#{version.major}.x",
    "~/Library/Preferences/com.madeinalacant.RetroVirtualMachine#{version.major}.plist",
  ]
end
