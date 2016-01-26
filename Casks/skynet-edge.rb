cask 'skynet-edge' do
  version :latest
  sha256 :no_check

  url 'https://joinskynet.com/ignition/v2/skynet/macosx/Skynet%20Edge.app.zip'
  name 'Skynet'
  homepage 'https://joinskynet.com/'
  license :freemium

  app 'Skynet Edge.app'
end
