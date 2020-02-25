cask 'retro-virtual-machine' do
  version '2.0.beta-1.r7,6783'
  sha256 '75e94f2df589ead3fb1eab529713312a17dc16e6b2ba547594cd9d5975def566'

  # retrovirtualmachine.ams3.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://retrovirtualmachine.ams3.digitaloceanspaces.com/release/beta1/macos/RetroVirtualMachine.#{version.before_comma}.macos.dmg"
  appcast 'https://www.retrovirtualmachine.org/en/downloads'
  name 'Retro Virtual Machine'
  homepage 'https://www.retrovirtualmachine.org/en/'

  app 'Retro Virtual Machine 2.app'
end
