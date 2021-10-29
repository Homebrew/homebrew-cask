cask "igv" do
  version "2.11.2"
  sha256 "8bfaaa12fc29594a654845905407edca7c8b6840902b89ffebe29c8a366c86fd"

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
