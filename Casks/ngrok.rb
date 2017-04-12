cask 'ngrok' do
  version '2.2.2,4VmDzA7iaHb'
  sha256 '9c170076a1f4f08a09532ce6cf9791c4c4f946886cdbf2a8917b569a9d5457f6'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
