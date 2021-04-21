cask "avidemux" do
  if MacOS.version <= :mojave
    version "2.7.4"
    sha256 "a5c5028ecc954b6658b4c0e6b04c1c186c42a12530e66a5379f51fe7a3ebfcd8"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojava_64Bits_Qt5.dmg",
        verified: "sourceforge.net/avidemux/"
  else
    version "2.7.8"
    sha256 "517b0197d6c9e0dd1e8cf70c235cb1af3d11af9168569693362781c61eb07338"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Catalina_64Bits_Qt5.dmg",
        verified: "sourceforge.net/avidemux/"
  end

  appcast "https://sourceforge.net/projects/avidemux/rss?path=/avidemux"
  name "Avidemux"
  desc "Video editor"
  homepage "https://www.avidemux.org/"

  app "Avidemux_#{version}.app"
  binary "#{appdir}/Avidemux_#{version}.app/Contents/MacOS/avidemux_cli", target: "avidemux"
  binary "#{appdir}/Avidemux_#{version}.app/Contents/MacOS/avidemux_jobs"
end
