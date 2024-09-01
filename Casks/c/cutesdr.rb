cask "cutesdr" do
  version "1.20"
  sha256 "b666dc37dc7b866a044cfbce811a986c37576841ee5cb95796f9b14b50a71db2"

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  name "CuteSDR"
  desc "Demodulation and spectrum display program"
  homepage "https://sourceforge.net/projects/cutesdr/"

  deprecate! date: "2024-09-01", because: :unmaintained

  app "cutesdr.app"

  caveats do
    requires_rosetta
  end
end
