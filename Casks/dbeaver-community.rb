cask 'dbeaver-community' do
  version '3.8.5'
  sha256 '318cb06e707719bd6a182c079c783108ccc001bb0ad141a531a34d5cdde65a23'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
