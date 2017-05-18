cask 'ramme' do
  version '3.1.0'
  sha256 'e8eaef921eab170f99396c127495b558d6b2cbaf1df914bcccd5ab37d592e1da'

  url "https://github.com/terkelg/ramme/releases/download/v#{version}/Ramme-#{version}.dmg"
  appcast 'https://github.com/terkelg/ramme/releases.atom',
          checkpoint: '3c25b04a09e8545b9d472753fbc540c339a5ce4c3ea4655aeff0796c164fcf27'
  name 'Ramme'
  homepage 'https://github.com/terkelg/ramme/'

  app 'Ramme.app'
end
