cask "igv" do
  version "2.11.4"
  sha256 "0a0994071d25f7fc1e4226ee89e1e66a34374d60e80152bb3c2f86a4b94b61ac"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://software.broadinstitute.org/software/igv/"

  livecheck do
    url "https://software.broadinstitute.org/software/igv/download"
    regex(%r{href=.*?/IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "IGV_#{version}.app"

  caveats do
    depends_on_java "11+"
  end
end
