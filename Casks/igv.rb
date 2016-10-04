cask 'igv' do
  version '2.3.82'
  sha256 '59f54404a4219fe0727ad8a9d6620f7c8d4ad36acbf6ca64f78446dee96aea48'

  url "https://data.broadinstitute.org/igv/projects/downloads/IGV_#{version}.app.zip"
  name 'Integrative Genomics Viewer (IGV)'
  homepage 'https://www.broadinstitute.org/software/igv/'
  license :mit

  app "IGV_#{version}.app"

  caveats do
    depends_on_java('7+')
  end
end
