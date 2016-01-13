cask 'lytro-desktop' do
  version '4.3.3,151118.98'
  sha256 '500b28ed7d67aaf18a59a8770e3fb83a4b96e692728ddbd522a52879af758966'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/lytro-distro/lytro-#{version.after_comma}.dmg"
  appcast 'https://pictures.lytro.com/support/software_update',
          :sha256 => '71ddb694821d180bf174fdf97a5df276dbf8f22df8be67cb997ec0476897cf6e'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'
  license :gratis

  app 'Lytro Desktop.app'
end
