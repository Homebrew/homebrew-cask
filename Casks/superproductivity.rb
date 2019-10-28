cask 'superproductivity' do
  version '2.13.6'
  sha256 'ef56b037bb9b165ad81533dbb11cb1061aa4d1d266c83f5354d005c6c4badee3'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
