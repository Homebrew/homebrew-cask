cask 'juicephone' do
  version '2.4.1'
  sha256 '4c5edb9197f7ae093681e810692b81e447a063cc0a59c025afc59cea0f59d33e'

  url "http://download.addpod.com/juicephone/#{version}"
  appcast 'http://update.addpod.com/juicephone.xml',
          checkpoint: '42f72ccc5b0552be5ae0853852acae7ff1d92032fc651c88b54db82dbc3271cf'
  name 'JuicePhone'
  homepage 'http://addpod.com/juicephone'

  app 'JuicePhone.app'
end
