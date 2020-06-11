cask 'superproductivity' do
  version '5.3.3'
  sha256 'aab2f69012c9ee1a9e1d2946f70caaf21c5f7047e316fe09529a05b6ba793181'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
