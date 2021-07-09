cask "igv" do
  version "2.10.0"
  sha256 "e1662a678b5a4cad1b492f64e1fbde39ebdbee283d106b6571a8a6b73945c1c3"

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
