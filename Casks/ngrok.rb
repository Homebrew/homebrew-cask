cask 'ngrok' do
  version '2.1.14,4VmDzA7iaHb'

  if Hardware::CPU.is_32_bit?
    sha256 '452f9a0ad89c09b28642187222d911ad8bb002a06d3d2e270aa1eb52f9677cb5'
    # bin.equinox.io was verified as official when first introduced to the cask
    url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-386.zip.zip"
  else
    sha256 'f0d369ef5b5769dfc1a50db658b0a26db511142c6cf8859a245819c8ae2bea31'
    # bin.equinox.io was verified as official when first introduced to the cask
    url "https://bin.equinox.io/c/#{version.after_comma}/ngrok-stable-darwin-amd64.zip"
  end

  name 'ngrok'
  homepage 'https://ngrok.com/'
  license :freemium

  binary 'ngrok'

  zap delete: '~/.ngrok2'
end
