cask 'ngrok' do
  version '2.0.19'
  sha256 'ec307920b86778db4c632434cb9fff01ead9edd7438618aab87f5e891791f799'

  url "https://dl.ngrok.com/ngrok_#{version}_darwin_amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :apache

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
