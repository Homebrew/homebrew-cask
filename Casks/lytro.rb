cask 'lytro' do
  version '4.3.3,151118.98'
  sha256 '500b28ed7d67aaf18a59a8770e3fb83a4b96e692728ddbd522a52879af758966'

  # amazonaws.com/lytro-distro was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/lytro-distro/lytro-#{version.after_comma}.dmg"
  appcast 'http://optics.miloush.net/lytro/TheResources.aspx'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'

  app 'Lytro Desktop.app'
end
