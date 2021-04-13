cask "cutesdr" do
  version "1.20"
  sha256 "b666dc37dc7b866a044cfbce811a986c37576841ee5cb95796f9b14b50a71db2"

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  name "CuteSDR"
  desc "Demodulation and spectrum display program"
  homepage "https://sourceforge.net/projects/cutesdr/"

  livecheck do
    url "https://sourceforge.net/projects/cutesdr/rss"
    strategy :page_match do |page|
      match = page.match(/CuteSdr(\d+?)(\d+)\.dmg/i)
      "#{match[1]}.#{match[2]}"
    end
  end

  app "cutesdr.app"
end
