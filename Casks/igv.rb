cask "igv" do
  version "2.11.9"
  sha256 "a856f0308e5746310797fb69f4024ebd3e0c5f43de25049b8eabb59dbf5ecbbc"

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
