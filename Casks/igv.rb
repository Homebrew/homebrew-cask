cask "igv" do
  version "2.14.1"
  sha256 "7e1f29e120656501d3b21890f9265398147a2636579050b8fab83dd06bc83ea8"

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
