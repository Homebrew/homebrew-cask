cask 'retro-virtual-machine' do
  version '2.0,1:7'
  sha256 '75e94f2df589ead3fb1eab529713312a17dc16e6b2ba547594cd9d5975def566'

  # retrovirtualmachine.ams3.digitaloceanspaces.com/release was verified as official when first introduced to the cask
  url "https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta#{version.before_colon.after_comma}/macos/RetroVirtualMachine.#{version.before_comma}.beta-#{version.before_colon.after_comma}.r#{version.after_colon}.macos.dmg"
  appcast 'https://www.retrovirtualmachine.org/en/downloads'
  name 'Retro Virtual Machine'
  homepage 'https://www.retrovirtualmachine.org/en/'

  app "Retro Virtual Machine #{version.major}.app"
end
