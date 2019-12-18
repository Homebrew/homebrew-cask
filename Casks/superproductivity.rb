cask 'superproductivity' do
  version '3.0.3'
  sha256 '467eaebc147e34743296f6315291d41bff6cc5e9ac9a501247795cd9c0e29c0d'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
