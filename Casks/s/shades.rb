cask "shades" do
  version "1.2"
  sha256 :no_check

  url "https://www.charcoaldesign.co.uk/shades/download/intel"
  name "Shades"
  homepage "https://www.charcoaldesign.co.uk/shades"

  disable! date: "2024-11-01", because: :unmaintained

  prefpane "Shades Preferences.prefPane"

  caveats do
    requires_rosetta
  end
end
