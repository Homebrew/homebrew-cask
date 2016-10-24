cask 'dbeaver-enterprise' do
  version '3.7.7'
  sha256 '2dd26c0fb03f44dc3513ba581913a7229d7d593919571774046ec79220a325f3'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
