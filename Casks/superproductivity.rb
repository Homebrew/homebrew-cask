cask 'superproductivity' do
  version '2.7.2'
  sha256 '658b0a2b0f8a7acf77830ead42596a2b8db743aa5080e13a751b4964d1e8e5ac'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
