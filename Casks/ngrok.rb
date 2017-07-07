cask 'ngrok' do
  version '2.2.6,4VmDzA7iaHb'
  sha256 '54dd3706f628213931ae3566b63ef740ce97ef68351e51fcf55f08a8c9ae33d2'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap trash: '~/.ngrok2'
end
