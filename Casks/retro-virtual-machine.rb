cask "retro-virtual-machine" do
  version "2.0,1.r7"
  sha256 "75e94f2df589ead3fb1eab529713312a17dc16e6b2ba547594cd9d5975def566"

  # retrovirtualmachine.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta#{version.after_comma.major}/macos/RetroVirtualMachine.#{version.before_comma}.beta-#{version.after_comma}.macos.dmg"
  appcast "https://www.retrovirtualmachine.org/en/downloads"
  name "Retro Virtual Machine"
  homepage "https://www.retrovirtualmachine.org/en/"

  app "Retro Virtual Machine #{version.major}.app"
end
