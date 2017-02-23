cask 'dbeaver-community' do
  version '4.0.1'
  sha256 '348c598998ca69b6d05ab5c13e60a8462265186f6e4d04c762863919efd1ecfa'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
