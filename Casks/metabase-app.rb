cask 'metabase-app' do
  version '0.26.1.1'
  sha256 '32d34717a38c564bf0d02869e75b91feaec43b2efe7fe1c67436c68c2e04cf61'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: 'f490d9cb1ff76e22d14ae58856df4cf33a27c48b6c0c6a7f41968076bbb8e9d6'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
