cask "igv" do
  version "2.8.13"
  sha256 "13f4b3508f0000f6eebc21e94e33c347fb55880053971993e4e115ffb6bd849b"

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
