cask 'ksdiff' do
  version '2.2.0,122'
  sha256 'cf32401d631e61cbbc3dc9947626174b45e8317a6cac39380067e7017e8d4c87'

  url "https://cdn.kaleidoscopeapp.com/releases/ksdiff-#{version.after_comma}-#{version.before_comma}.zip"
  name 'ksdiff'
  homepage 'https://www.kaleidoscopeapp.com/ksdiff2'

  conflicts_with cask: 'kaleidoscope'

  pkg "ksdiff-#{version.after_comma}/Install ksdiff.pkg"

  uninstall pkgutil: 'com.blackpixel.kaleidoscope.ksdiff.installer.pkg'

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
