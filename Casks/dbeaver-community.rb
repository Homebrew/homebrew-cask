cask 'dbeaver-community' do
  version '4.0.2'
  sha256 '8545d888a908996a4b84ac87a47b3943684f8ce9339a86260bba8b8b66578296'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
