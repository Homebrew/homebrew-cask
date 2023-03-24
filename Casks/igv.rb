cask "igv" do
  version "2.16.0"
  sha256 "324005f150a5af7c63446faa5c73704efb742ef6486c40f2c2fa79cf1938e72c"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://software.broadinstitute.org/software/igv/"

  livecheck do
    url "https://software.broadinstitute.org/software/igv/download"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "IGV_#{version}.app"

  caveats do
    depends_on_java "11+"
  end
end
