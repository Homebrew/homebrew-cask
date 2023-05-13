cask "programmer-dvorak" do
  version "1.2.13"
  sha256 "842ffaf714aaac91b0287c4e4576f18be1bfc32693709593a118572a7cc78006"

  url "https://kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.dots_to_underscores}.pkg.zip"
  name "Programmer Dvorak"
  desc "Keyboard layout for programmers"
  homepage "https://kaufmann.no/roland/dvorak/"

  livecheck do
    url "https://kaufmann.no/roland/dvorak/#downloads"
    strategy :page_match do |page|
      v = page[/href=.*?ProgrammerDvorak-(\d+(?:_\d+)*)\.pkg\.zip/i, 1]
      v.tr("_", ".")
    end
  end

  container nested: "Programmer Dvorak v#{version.major_minor}.pkg/Contents/Archive.pax.gz"

  keyboard_layout "Library/Keyboard Layouts/Programmer Dvorak.bundle"

  caveats do
    reboot
  end
end
