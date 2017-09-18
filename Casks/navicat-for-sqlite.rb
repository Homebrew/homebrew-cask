cask 'navicat-for-sqlite' do
  version '12.0.13'
  sha256 'd460be532c13872e04ac22a8f67b2e88f63a76a84272b52b1c17664b8070900e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: '1aeaef5a300b05baa976ae24c67402ccea61dce3fb099ee6af18796825be1814'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
