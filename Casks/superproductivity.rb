cask 'superproductivity' do
  version '3.0.7'
  sha256 'b718dfac0357bda25b255ed00140cfb5976ab185e1ec300b2da80a939d747ef6'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
