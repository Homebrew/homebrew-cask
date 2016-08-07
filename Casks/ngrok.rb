cask 'ngrok' do
  version '2.1.3,4VmDzA7iaHb'
  sha256 '863ebc05824329d288977d275d2ab90e554780a053019ae2bbadb317a1abf607'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
