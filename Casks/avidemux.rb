cask "avidemux" do
  if MacOS.version <= :mojave
    version "2.7.4"
    sha256 "a5c5028ecc954b6658b4c0e6b04c1c186c42a12530e66a5379f51fe7a3ebfcd8"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_Mojava_64Bits_Qt5.dmg",
        verified: "sourceforge.net/avidemux/"
  else
    version "2.8.1"
    sha256 "816645f5eb2c903019d563ea5c684b5afbbdc1e52c90da9b387406559baf6574"

    url "https://downloads.sourceforge.net/avidemux/avidemux/#{version}/Avidemux_#{version}_BigSur_Qt6.dmg",
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
end
