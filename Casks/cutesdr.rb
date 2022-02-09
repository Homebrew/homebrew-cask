cask "cutesdr" do
  version "1.20"
  sha256 "b666dc37dc7b866a044cfbce811a986c37576841ee5cb95796f9b14b50a71db2"

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  name "CuteSDR"
  desc "Demodulation and spectrum display program"
  homepage "https://sourceforge.net/projects/cutesdr/"

  livecheck do
    url :url
    regex(%r{url=.*?/CuteSdr[._-]?v?(\d+(?:\.\d+)*)\.dmg}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map do |match|
        # Naively convert filename versions like `120` to `1.20`
        match[0].include?(".") ? match[0] : match[0].insert(1, ".")
      end
    end
  end

  app "cutesdr.app"
end
