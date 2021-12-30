cask "jdiskreport" do
  version "1.4.1"
  sha256 "cb64f3d7ea8e43b142a69cabdded832b8de8e503766ccf1c7a16b314d2bc0d44"

  url "https://www.jgoodies.com/download/jdiskreport/jdiskreport-#{version.dots_to_underscores}-mac.zip"
  name "JDiskReport"
  desc "Disk usage utility"
  homepage "https://www.jgoodies.com/freeware/jdiskreport/"

  livecheck do
    url "https://www.jgoodies.com/downloads/jdiskreport/"
    strategy :page_match do |page|
      match = page[/href=.*?jdiskreport[._-]?v?(\d+(?:_\d+)+)[._-]mac\.zip/i, 1]
      next if match.blank?

      match.tr("_", ".")
    end
  end

  app "JDiskReport #{version}/JDiskReport.app"
end
