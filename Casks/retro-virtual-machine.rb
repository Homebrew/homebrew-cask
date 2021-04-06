cask "retro-virtual-machine" do
  version "2.0,1.r7"
  sha256 "75e94f2df589ead3fb1eab529713312a17dc16e6b2ba547594cd9d5975def566"

  url "https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta#{version.after_comma.major}/macos/RetroVirtualMachine.#{version.before_comma}.beta-#{version.after_comma}.macos.dmg",
      verified: "retrovirtualmachine.ams3.digitaloceanspaces.com/"
  appcast "https://www.retrovirtualmachine.org/en/downloads"
  name "Retro Virtual Machine"
  homepage "https://www.retrovirtualmachine.org/en/"

  app "Retro Virtual Machine #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Retro Virtual Machine v#{version.major}.x",
    "~/Library/Preferences/com.madeinalacant.RetroVirtualMachine#{version.major}.plist",
  ]
end
