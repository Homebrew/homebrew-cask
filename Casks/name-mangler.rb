cask 'name-mangler' do
  version '3.3.5'
  sha256 'db608bd7aef53d605b08da92b7167aba536686347c2972394d024f3fa480982c'

  url 'https://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          checkpoint: '3f57c34d228dfa2a3aa6d9de76defd2e3d1b8075b6b71a22a98cc727eddbb231'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'
  license :freemium

  auto_updates true

  app 'Name Mangler.app'
end
