cask 'buttercup' do
  version '1.20.3'
  sha256 '7f64327a796d673353c6a71d746923b20d84bfc0f711d80556f8e96b60bae822'

  # github.com/buttercup/buttercup-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}.dmg"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
