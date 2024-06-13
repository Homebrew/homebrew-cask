cask "font-linux-libertine" do
  version "5.3.0,2012_07_02"
  sha256 "24a593a949808d976850131a953c0c0d7a72299531dfbb348191964cc038d75d"

  url "https://downloads.sourceforge.net/linuxlibertine/LinLibertineTTF_#{version.tr(",", "_")}.tgz",
      verified: "downloads.sourceforge.net/linuxlibertine/"
  name "Linux Libertine"
  homepage "http://linuxlibertine.org/"

  # The regex below specifically matches filenames with a version and optional
  # date. One release (5.0.0) only used a date, so that will be treated as the
  # newest version until it's no longer in the RSS feed.
  livecheck do
    url "https://sourceforge.net/projects/linuxlibertine/rss?path=/linuxlibertine"
    regex(%r{url=.*?/LinLibertine(?:Font|TTF)[._-]v?(\d+(?:[.-]\d+)+)(?:[_-](\d+(?:[_-]\d+)+))?\.}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  font "LinLibertine_DRah.ttf"
  font "LinLibertine_I.ttf"
  font "LinLibertine_Mah.ttf"
  font "LinLibertine_RBIah.ttf"
  font "LinLibertine_RBah.ttf"
  font "LinLibertine_RIah.ttf"
  font "LinLibertine_RZIah.ttf"
  font "LinLibertine_RZah.ttf"
  font "LinLibertine_Rah.ttf"

  # No zap stanza required
end
