cask 'dbeaver-enterprise' do
  version '5.0.0'
  sha256 '029b0d2843526c7b7284d6d4994d997ee82616200ee7df95e1e8c6776ba47f6d'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/product/version.xml',
          checkpoint: '239400a77a41d246b4a996f7b51c12afe9c2fd466df0813f999e4f5b0b73e008'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'DBeaverEE.app'

  caveats do
    depends_on_java('8+')
  end
end
