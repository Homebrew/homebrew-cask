cask "quicklook-pat" do
  version "1.0.0"
  sha256 "41d6d9ffb042490c93d661b95c392a341ecde42f40de6988ae944c64808aac28"

  url "https://github.com/pixelrowdies/quicklook-pat/releases/download/#{version}/PatternQuickLook.pkg"
  name "Adobe Photoshop Patterns Quicklook Plugin"
  desc "Quick Look plugin for Adobe Photoshop pattern files"
  homepage "https://github.com/pixelrowdies/quicklook-pat"

  deprecate! date: "2024-11-15", because: :unmaintained

  pkg "PatternQuickLook.pkg"

  uninstall pkgutil: "de.pixelrowdies.PatternQuickLook"

  caveats do
    requires_rosetta
  end
end
