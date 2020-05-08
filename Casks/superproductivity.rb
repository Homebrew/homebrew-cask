cask 'superproductivity' do
  version '5.1.1'
  sha256 'b6b276cf299203e22bc8c472cb4eca3b5acce9f9b21fc0aa8c08cd0ab3ca5f95'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
