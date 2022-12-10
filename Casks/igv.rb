cask "igv" do
  version "2.15.4"
  sha256 "551c9639509205b29339f4052abac7887d071aa43ca3de8644c6f863038fb1a8"

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
