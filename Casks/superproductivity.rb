cask 'superproductivity' do
  version '2.6.3'
  sha256 '0d0cbe40a8b2d93b64584aac6f07a7c3c34a1b82d60519ed24e17616f945f365'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
