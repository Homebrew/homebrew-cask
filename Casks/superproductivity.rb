cask 'superproductivity' do
  version '1.9.1'
  sha256 'a286fba6e7ca75bc9a8a6f7d9da29e3c3567826c29631f11eee360f6c20f1c6d'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: 'fb1dc22a5e1a01d8e321ab8af61fdbea6ac0b9b4d9a9ef8f1cb37e5edc7d56a2'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
