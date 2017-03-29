cask 'ngrok' do
  version '2.2.2,4VmDzA7iaHb'
  sha256 '5cb4f72d3ede19d8bc14c0e0566f51c0caee20f932983c47ccdc2e5a4fb69002'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
