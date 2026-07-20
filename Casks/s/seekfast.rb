cask "seekfast" do
  version "7.4"
  sha256 "446cf92a45b830f802b32e20204b42464aa242b213bec4adc9be400c1e8bb17d"

  url "https://seekfast.org/files_933/SeekFast_#{version}.dmg"
  name "SeekFast"
  desc "Search text in documents and files"
  homepage "https://seekfast.org/"

  livecheck do
    url "https://seekfast.org/files_933/SeekFastMac_pad.xml"
    strategy :xml do |xml|
      xml.get_elements("XML_DIZ_INFO/Program_Info/Program_Version").map(&:text)
    end
  end

  depends_on macos: :ventura

  app "SeekFast.app"

  zap trash: [
    "~/Library/Application Support/SeekFast",
    "~/Library/Caches/velopack/org.seekfast.SeekFast",
  ]
end
