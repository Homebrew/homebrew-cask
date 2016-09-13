cask 'ngrok' do
  version '2.1.12,4VmDzA7iaHb'
  sha256 '10812c02fb8450bb3b5726a50251e2d2615727875fb584764bbe38cfcc5dd68a'

  # bin.equinox.io was verified as official when first introduced to the cask
  url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
