cask 'superproductivity' do
  version '5.5.1'
  sha256 '00b66d78686facabc76c605f144951fb5b387ca4baf1c8ba24b344fa49c1bcfd'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
