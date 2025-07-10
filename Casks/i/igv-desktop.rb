cask "igv-desktop" do
  version "2.19.5"
  sha256 "e969925218831002c2d61779c14a2673a9a674a49b7f4f988bdea21bf47e4c6d"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip",
      verified: "data.broadinstitute.org/"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://igv.org/doc/desktop/"

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
    depends_on_java "21+"
  end
end
