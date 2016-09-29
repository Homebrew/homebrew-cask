cask 'ngrok' do
  version '2.1.14,4VmDzA7iaHb'
  sha256 '63c9aeee01956f2e9627581f78a2e498e3364455240d663ccf7184c86d0fe6e3'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
