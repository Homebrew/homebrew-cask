cask 'ngrok' do
  version '2.0.24,4VmDzA7iaHb'
  sha256 '62fb342cd1d177415a1b4dba1b40f542e25caa5ea119604981e474a0003c6aa1'

  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
