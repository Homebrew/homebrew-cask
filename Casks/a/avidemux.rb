cask "avidemux" do
  on_big_sur :or_older do
    version "2.7.4"
    sha256 "a5c5028ecc954b6658b4c0e6b04c1c186c42a12530e66a5379f51fe7a3ebfcd8"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojava_64Bits_Qt5.dmg",
        verified: "sourceforge.net/avidemux/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "2.8.1"
    sha256 "b0b8890114172d531d138f6c1413f0393c0e5a87530168106a12d6b11ae44833"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}v2_Monterey_Qt6.dmg",
        verified: "sourceforge.net/avidemux/"
  end

  name "Avidemux"
  desc "Video editor"
  homepage "https://www.avidemux.org/"

  app "Avidemux_#{version}.app"
  binary "#{appdir}/Avidemux_#{version}.app/Contents/MacOS/avidemux_cli", target: "avidemux"
  binary "#{appdir}/Avidemux_#{version}.app/Contents/MacOS/avidemux_jobs"

  zap trash: [
    "~/.avidemux6",
    "~/Library/Saved Application State/Avidemux.org.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
