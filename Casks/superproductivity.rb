cask 'superproductivity' do
  version '2.13.3'
  sha256 '6bb6ebed68e41ccdb4deee3dad483a8556babf315c948456a855e52d8fe8d1bb'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
