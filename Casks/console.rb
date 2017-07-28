cask 'console' do
  version '0.1.0'
  sha256 '83bf53d860f24e0dce2f400db2d564462ecacb9b90a5550014b38088c76a2642'

  url "https://github.com/macmade/Console/releases/download/#{version}/Console.app.zip"
  appcast 'https://github.com/macmade/Console/releases.atom',
          checkpoint: '78300bdb5f5ae6813a81730ae5e8309c6932d31c8e144088bac17ecdf434b7b5'
  name 'Console'
  homepage 'https://github.com/macmade/Console'

  depends_on macos: '>= :el_capitan'

  app 'Console.app'
end
