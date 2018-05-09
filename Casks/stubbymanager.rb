cask 'stubbymanager' do
  version '0.2.0,6782984'
  sha256 'be6dd379d8fc9c5dc05352ba97f901d86380621b1e0e6acbe771448a8618e191'

  url "https://dnsprivacy.org/wiki/download/attachments/#{version.after_comma}/StubbyManager.pkg"
  name 'StubbyManager'
  homepage 'https://dnsprivacy.org/wiki/display/DP/Stubby+GUI+for+macOS'

  pkg 'StubbyManager.pkg'

  uninstall pkgutil: 'com.sinodun.pkg.Stubby'
end
