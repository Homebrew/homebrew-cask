cask :v1 => 'skynet-edge' do
  version :latest
  sha256 :no_check

  url 'http://joinskynet.com/ignition/v2/skynet/macosx/Skynet%20Edge.app.zip'
  name 'Skynet'
  homepage 'http://joinskynet.com/'
  license :freemium

  app 'Skynet Edge.app'
end
