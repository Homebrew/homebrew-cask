cask "igv" do
  version "2.11.3"
  sha256 "6549efea89cb2551aff908ed3c1df757bbec6bdd0c3000320fdc38663238cd54"

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
