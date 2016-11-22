cask 'dbeaver-enterprise' do
  version '3.8.0'
  sha256 '8bf51ec76e4cf030be8670a70bff203f045fd83a0fb64c969b586e91255fc964'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
