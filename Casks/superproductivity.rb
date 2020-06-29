cask 'superproductivity' do
  version '5.4.2'
  sha256 '8481a56997887fcb97b0b43b524048c78262dadbd24e2243faa504b8a28c6588'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
