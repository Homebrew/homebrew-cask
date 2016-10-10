cask 'name-mangler' do
  version '3.3.7'
  sha256 '27630a76e82f6426b802d43e94bc97eb84dfe426044343f0b9f4f440cfecda25'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          checkpoint: '622b9edd29a3f31b34d0a1f9d3aa892ec2b71a5dfd7cb31769c4d41559357b05'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'

  auto_updates true

  app 'Name Mangler.app'
end
