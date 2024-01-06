cask "igv" do
  version "2.17.0"
  sha256 "9124109af25e6b943c08b21ace8f56dea3768dbfc93a37141e1fe65c69db49b9"

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
    "~/Library/Preferences/org.broad.igv.plist",
    "~/igv",
  ]

  caveats do
    depends_on_java "11+"
  end
end
