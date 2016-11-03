cask 'igv' do
  version '2.3.86'
  sha256 '54da956818bed42ba586bbdf446b37f67748eb397d645197dc4b92299cf9f01e'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://www.broadinstitute.org/software/igv/'

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
