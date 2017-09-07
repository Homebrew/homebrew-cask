cask 'ngrok' do
  version :latest
  sha256 :no_check

  # bin.equinox.io was verified as official when first introduced to the cask
  url 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip'
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap trash: '~/.ngrok2'
end
