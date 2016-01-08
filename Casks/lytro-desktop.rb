cask 'lytro-desktop' do
  version '4.3.3,151118.98'
  sha256 '500b28ed7d67aaf18a59a8770e3fb83a4b96e692728ddbd522a52879af758966'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/lytro-distro/lytro-#{version.after_comma}.dmg"
  appcast 'https://pictures.lytro.com/support/software_update',
          :sha256 => '66f0c430f2f38cfabb723e19e33fc0275c5281b553a72f576f8c11e6f4335ad3'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'
  license :gratis

  app 'Lytro Desktop.app'
end
