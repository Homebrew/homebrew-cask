cask "dosbox" do
  version "0.74-3,3"
  sha256 "83493d149318cb7bfe5d68d98d1cd10b003db2f0519374bf06de285dc0bb2768"

  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version.csv.first}/DOSBox-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "sourceforge.net/dosbox/"
  name "DOSBox"
  desc "Emulator for x86 with DOS"
  homepage "https://www.dosbox.com/"

  livecheck do
    url "https://sourceforge.net/projects/dosbox/rss?path=/dosbox"
    strategy :page_match do |page|
      page.scan(%r{<link>.*/DOSBox-(\d+(?:[.-]\d+)*).dmg}i).map do |matches|
        versions = matches[0].split("-")
        version = "#{versions[0]}-#{versions[1]},#{versions[2]}" if versions.length == 3
        version = "#{versions[0]}-#{versions[1]}" if versions.length == 2
        version
      end
    end
  end

  app "dosbox.app"

  zap trash: "~/Library/Preferences/DOSBox*"
end
