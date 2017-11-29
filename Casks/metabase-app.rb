cask 'metabase-app' do
  version '0.27.0.0'
  sha256 '7d321d7be48822b58177d14141d161e57551ee250d19ed1dedff88c9e84550dc'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '939c47775554bea5a73e28962aeb3508a3a3c28a50bd2afbb9dabf7a78712812'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
