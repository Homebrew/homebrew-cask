cask "igv" do
  version "2.8.9"
  sha256 "8491b0348795cdccf34c71d3266a63bfb6c2091640c8990c0429adcce9d0b871"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_#{version}.app.zip"
  appcast "https://data.broadinstitute.org/igv/projects/downloads/",
          must_contain: version.major_minor
  name "Integrative Genomics Viewer (IGV)"
  homepage "https://software.broadinstitute.org/software/igv/"

  app "IGV_#{version}.app"

  caveats do
    depends_on_java "8+"
  end
end
