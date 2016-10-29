cask 'ngrok' do
  version '2.1.18,4VmDzA7iaHb'
  sha256 '379763f38394903d59c49842034e89861c641ce8449d97fa4317e1433b6c0a79'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
