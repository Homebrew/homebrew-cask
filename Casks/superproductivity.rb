cask 'superproductivity' do
  version '1.9.1'
  sha256 'a286fba6e7ca75bc9a8a6f7d9da29e3c3567826c29631f11eee360f6c20f1c6d'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: 'bb1c72a2875efdaeffd4907e84be0740272719b2f5ec4b79e2f6097009e20e76'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
