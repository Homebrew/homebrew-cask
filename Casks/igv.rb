cask "igv" do
  version "2.11.1"
  sha256 "ec16903645439b1edc5297b480f2dd3d81a7bcdac03f7b0ff2b22ee12bf6e6c8"

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
