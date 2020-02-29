cask 'nextcloud' do
  if MacOS.version <= :el_capitan
    version '2.6.3.20200217-legacy'
    sha256 '9e3f5c509cd7889b78bb0375e01f0e46b457a98845f0a222d71235cd65413dec'
  else
    version '2.6.3.20200217'
    sha256 'baee483ef22ad6aec13aeea19d550f3a89f008dda48749f7feaf621b1a3d457f'
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  depends_on macos: '>= :yosemite'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
