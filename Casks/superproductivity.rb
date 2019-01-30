cask 'superproductivity' do
  version '1.999.1000'
  sha256 '4545ca2b2d994e71e2c14ca16dfb989b2df31a078295a5291d480732d864761c'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
