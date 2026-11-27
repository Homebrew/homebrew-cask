cask "seekfast" do
  version "7.5"
  sha256 "00e795d573b9ac171231780bfbd5ece9db4224762395f7da61d68e2d7b02ae87"

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
    "~/Library/Caches/SeekFast",
    "~/Library/Caches/velopack/org.seekfast.SeekFast",
    "~/Library/WebKit/SeekFast",
  ]
end
