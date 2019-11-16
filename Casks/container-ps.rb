cask 'container-ps' do
  version '1.2.0'
  sha256 '55776d6a0cc3d306bfaae9f831fd516b1b3fc37c8be8c8a521e019a163cfbfeb'

  url "https://github.com/Toinane/container-ps/releases/download/#{version}/Container.PS-#{version}.dmg"
  appcast 'https://github.com/Toinane/container-ps/releases.atom'
  name 'Container PS'
  homepage 'https://github.com/Toinane/container-ps'

  app 'Container PS.app'
end
