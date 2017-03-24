cask 'dbeaver-community' do
  version '4.0.3'
  sha256 '6324a964024653241ba41a25b2415a2c67ddeb8e4892740b6d78a3907207094d'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
