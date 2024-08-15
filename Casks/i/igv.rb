cask "igv" do
  version "2.18.1"
  sha256 "a8385ad96c6b5ad5954a5a07930f7d37ef6326453c8142730531058b639a1623"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://software.broadinstitute.org/software/igv/"

  livecheck do
    url "https://igv.org/doc/desktop/DownloadPage/"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "IGV_#{version}.app"

  zap trash: [
    "~/.igv",
    "~/igv",
    "~/Library/Preferences/org.broad.igv.plist",
  ]

  caveats do
    requires_rosetta
    depends_on_java "17+"
  end
end
