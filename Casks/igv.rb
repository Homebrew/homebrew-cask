cask "igv" do
  version "2.9.0"
  sha256 "b7b53d45f27063df4a6be0f1e2060187bba18c9b548c3b81f72ab08e2e2dc950"

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
