cask 'stubbymanager' do
  version '0.1.0,6782984'
  sha256 'b6b7bf8aee217ca66c2fb99a079e89d90f3c251c37bdcc07ef8706702f157c3d'

  url "https://dnsprivacy.org/wiki/download/attachments/#{version.after_comma}/StubbyManager.pkg"
  name 'StubbyManager'
  homepage 'https://dnsprivacy.org/wiki/display/DP/Stubby+GUI+for+macOS'

  pkg 'StubbyManager.pkg'

  uninstall pkgutil: 'com.sinodun.pkg.Stubby'
end
