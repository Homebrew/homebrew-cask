cask 'dbeaver-enterprise' do
  version '3.6.5'
  sha256 'ce0de500a1599ea1ce3cfc2ed563da9017ea1442967b7fe2d764f251c79f647a'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
