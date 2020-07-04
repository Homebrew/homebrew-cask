cask 'superproductivity' do
  version '5.4.3'
  sha256 'db416cf4171e35ccf82349d2f277ff8aeb6dc148f11a4b6afd9cd081dd0af6d9'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
