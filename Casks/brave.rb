cask 'brave' do
  version '0.9.0dev'
  sha256 '6fe12f3704fa25e5565596d81ec7a32c3e927d5774751766cd8265d95f2e9ce3'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'd949a297fd2210f53be697d2b3c844fa05e3107450a98d542c9edb04d72d36f7'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
