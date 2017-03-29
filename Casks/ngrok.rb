cask 'ngrok' do
  version '2.2.2,4VmDzA7iaHb'
  sha256 '679452fa75f2fcf1ebc2e3a5eab300be4416bfafaaaccb121dd94ee145e0b10c'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
