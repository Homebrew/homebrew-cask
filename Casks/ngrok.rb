cask 'ngrok' do
  version '2.2.8'
  sha256 'ad6b987444321929d3338f3ca8267fffb63d91d4cbb8723b353ed8a8726c51c9'

  # bin.equinox.io was verified as official when first introduced to the cask
  url 'https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip'
  name 'ngrok'
  homepage 'https://ngrok.com/'

  binary 'ngrok'

  zap trash: '~/.ngrok2'
end
