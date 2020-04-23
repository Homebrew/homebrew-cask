cask 'ganache' do
  version '2.3.2'
  sha256 '19191f2f5457e981451899df3724032015c8259f0390fb1efae12c7403c2febb'

  # github.com/trufflesuite/ganache/ was verified as official when first introduced to the cask
  url "https://github.com/trufflesuite/ganache/releases/download/v#{version}/Ganache-#{version}-mac.dmg"
  appcast 'https://github.com/trufflesuite/ganache/releases.atom'
  name 'Ganache'
  homepage 'https://truffleframework.com/ganache/'

  app 'Ganache.app'
end
