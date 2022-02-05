cask "igv" do
  version "2.12.0"
  sha256 "da8ab334a623b1263117593666d78746bda93f9eddd8f0ccd7f5335f2b74d181"

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
