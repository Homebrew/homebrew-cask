cask 'obs-virtualcam' do
  version '1.1.0,0e62cec'
  sha256 'e0ad314f6e635c4e79d78bb75c694263f80ce524e5f084f4fcfba155042e0d51'

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.before_comma}/obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"
  appcast 'https://github.com/johnboiles/obs-mac-virtualcam/releases.atom'
  name 'OBS Virtual Camera'
  homepage 'https://github.com/johnboiles/obs-mac-virtualcam'

  depends_on macos: '>= :high_sierra'

  pkg "obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.johnboiles.obs-mac-virtualcam'
end
