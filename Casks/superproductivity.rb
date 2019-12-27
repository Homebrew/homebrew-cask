cask 'superproductivity' do
  version '3.0.5'
  sha256 '87bdd0bcdc4cd63488bd09266d97c4a88230d5562dbd0d55ce3637402919b198'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
