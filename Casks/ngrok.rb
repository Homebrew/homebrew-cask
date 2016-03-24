cask 'ngrok' do
  version '2.0.24'
  sha256 '62fb342cd1d177415a1b4dba1b40f542e25caa5ea119604981e474a0003c6aa1'

  # bin.equinox.io was verified as official when first introduced to the cask
  url 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip'
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
