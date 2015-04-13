cask :v1 => 'ngrok' do
  version '2.0.15'
  sha256 '5dbe5411c36654441c8a6d561194bed7a37d662ac55c9de5e8d6b56b839badf6'

  url "https://dl.ngrok.com/ngrok_#{version}_darwin_amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :apache

  binary 'ngrok'

  # todo verify that this does not contain user-created content
  # zap :delete => '~/.ngrok'
end
