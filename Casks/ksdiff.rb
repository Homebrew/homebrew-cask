cask "ksdiff" do
  version "2.3.6,123"
  sha256 "6693effaf5132190229877db7cec00a9d16f2f1ecfe755c81cfe8c4a2c748b38"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.before_comma}-build-#{version.after_comma}-jan-18-2021.zip"
  name "ksdiff"
  homepage "https://kaleidoscope.app/ksdiff2"

  conflicts_with cask: "kaleidoscope"

  pkg "ksdiff-#{version.before_comma}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
