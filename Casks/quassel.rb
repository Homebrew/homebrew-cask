cask 'quassel' do
  version '0.13.1'
  sha256 'bda19cfd004a0b377f1c6a3974fd63f5665d5dc570eac2a24bf7c48d387f24fb'

  # github.com/quassel/quassel/ was verified as official when first introduced to the cask
  url "https://github.com/quassel/quassel/releases/download/#{version}/QuasselMono_MacOSX-x86_64_#{version}.dmg"

  appcast 'https://github.com/quassel/quassel/releases.atom'
  name 'Quassel IRC'
  homepage 'https://quassel-irc.org/'

  app 'Quassel.app'
end
