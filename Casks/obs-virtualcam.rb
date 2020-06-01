cask 'obs-virtualcam' do
  version '1.2.0,3ca8f62'
  sha256 '656e4613b34ef8c4ebd3ccf63ce3ae1f4c018fa44f1ce4e53405b9b13c0a76c4'

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.before_comma}/obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"
  appcast 'https://github.com/johnboiles/obs-mac-virtualcam/releases.atom'
  name 'OBS Virtual Camera'
  homepage 'https://github.com/johnboiles/obs-mac-virtualcam'

  depends_on macos: '>= :high_sierra'

  pkg "obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.johnboiles.obs-mac-virtualcam'
end
