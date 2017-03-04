cask 'lytro-desktop' do
  version '4.3.3,151118.98'
  sha256 '500b28ed7d67aaf18a59a8770e3fb83a4b96e692728ddbd522a52879af758966'

  # amazonaws.com/lytro-distro was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/lytro-distro/lytro-#{version.after_comma}.dmg"
  appcast 'https://pictures.lytro.com/support/software_update',
          checkpoint: 'c806ff660e791f181371f9946412ee07ebd03459db8791832ed4b0be378d587a'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'

  app 'Lytro Desktop.app'
end
