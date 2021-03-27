cask "igv" do
  version "2.9.4"
  sha256 "5bf4bf52337c32c9350d45aab0fcf3426ac5b8ecd1036b8499a7373c7f7a682f"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  appcast "https://data.broadinstitute.org/igv/projects/downloads/",
          must_contain: version.major_minor
  name "Integrative Genomics Viewer (IGV)"
  homepage "https://software.broadinstitute.org/software/igv/"

  app "IGV_#{version}.app"

  caveats do
    depends_on_java "8+"
  end
end
