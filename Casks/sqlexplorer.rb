cask 'sqlexplorer' do
  version '3.6.1'
  sha256 '57b40bf7f06d8ea125126de9c370bbd0415f5d9c68ce5200765e146acac0b05e'

  url "https://downloads.sourceforge.net/eclipsesql/SQL%20Explorer%20RCP%20%28exc%20JRE%29/#{version}/sqlexplorer_rcp-#{version}.macosx.cocoa.x86.tgz"
  appcast 'https://sourceforge.net/projects/eclipsesql/rss',
          checkpoint: '855a9f6b5ca130b0b84b82a34b98ed60af4e8ea3f1408fa573ffaa3dc1cb7dfd'
  name 'Eclipse SQL Explorer'
  homepage 'http://eclipsesql.sourceforge.net/'

  app 'SQLExplorer/sqlexplorer.app'
end
