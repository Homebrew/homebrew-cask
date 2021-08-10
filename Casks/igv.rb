cask "igv" do
  version "2.10.3"
  sha256 "09bba5c65d2ff89e39d91bb7c4cf3a0a2e03435e7c883e3f64d0797fd3b29fe7"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://software.broadinstitute.org/software/igv/"

  livecheck do
    url "https://software.broadinstitute.org/software/igv/download"
    strategy :page_match
    regex(%r{href=.*?/IGV_MacApp_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "IGV_#{version}.app"

  caveats do
    depends_on_java "8+"
  end
end
