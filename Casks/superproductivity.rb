cask 'superproductivity' do
  version '4.0.3'
  sha256 '6b381b5dad65def1cc846e80d49e3117f8378871507195b2e9b072ed46898d30'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
