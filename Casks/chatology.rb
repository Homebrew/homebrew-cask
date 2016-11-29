cask 'chatology' do
  version '1.1'
  sha256 'cf5e9bf958b9cb62e3e194578a43d8c2d9c7bcb3138f0205c3b421f111566c73'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php',
          checkpoint: '8de7c950c0f46d3649bd3b0b78c1e787fa302e048da00b0dc384f9cb86821357'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'

  app 'Chatology.app'
end
