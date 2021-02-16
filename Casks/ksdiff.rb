cask "ksdiff" do
  version "2.4,124-feb-4-2021"
  sha256 "cedb705806f28272f319c520d320a6c716ff57f675bdd03c73432dc5a0184eef"

  url "https://updates.kaleidoscope.app/v2/prod/ksdiff-#{version.before_comma}-#{version.after_comma}.zip"
  name "ksdiff"
  desc "Command-line tool for Kaleidoscope. Only needed with App Store version of Kaleidoscope."
  homepage "https://kaleidoscope.app/ksdiff2"

  conflicts_with cask: "kaleidoscope"

  pkg "ksdiff-#{version.before_comma}/Install ksdiff.pkg"

  uninstall pkgutil: "com.blackpixel.kaleidoscope.ksdiff.installer.pkg"

  caveats <<~EOS
    The #{token} Cask is not needed when installing Kaleidoscope via Cask. It
    is provided for users who have purchased Kaleidoscope via the App Store.
  EOS
end
