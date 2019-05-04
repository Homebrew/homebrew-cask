cask 'pyfa' do
  version '2.9.3'
  sha256 '08e2429d2f6585d6204b9eb190c416d809ccd961fb033ec65014a1a8a4ae972f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
