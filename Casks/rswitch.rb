cask 'rswitch' do
  version '1.2.0'
  sha256 '9d214ab1120980ab9853e283f5c04ad6ec3ead4b8006d517f29d75a9815aa373'

  url "https://github.com/hrbrmstr/RSwitch/releases/download/v#{version}/RSwitch-#{version}.app.zip"
  appcast 'https://github.com/hrbrmstr/RSwitch/releases.atom'
  name 'RSwitch'
  homepage 'https://github.com/hrbrmstr/RSwitch'

  app 'RSwitch.app'
end
