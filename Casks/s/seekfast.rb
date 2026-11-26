cask "seekfast" do
  version "7.5"
  sha256 "262f56f6061a34af08a93f589d3e7ef67346b1a6add7fb94504fc9674f1e1e3e"

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
