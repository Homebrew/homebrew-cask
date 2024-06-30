cask "shades" do
  version "1.2"
  sha256 :no_check

  url "https://www.charcoaldesign.co.uk/shades/download/intel"
  name "Shades"
  homepage "https://www.charcoaldesign.co.uk/shades"

  livecheck do
    url :homepage
    regex(/version\s+(?:<a[^>]*>\s*)?(\d+(?:\.\d+)+)/i)
  end

  prefpane "Shades Preferences.prefPane"

  caveats do
    requires_rosetta
  end
end
