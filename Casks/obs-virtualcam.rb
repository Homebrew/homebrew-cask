cask 'obs-virtualcam' do
  version '1.1.2,a70ec47'
  sha256 '38a59fd4a75374c2fe101d796006e210647ae4dae6825b80720e495ed6219ac5'

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.before_comma}/obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"
  appcast 'https://github.com/johnboiles/obs-mac-virtualcam/releases.atom'
  name 'OBS Virtual Camera'
  homepage 'https://github.com/johnboiles/obs-mac-virtualcam'

  depends_on macos: '>= :high_sierra'

  pkg "obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.johnboiles.obs-mac-virtualcam'
end
