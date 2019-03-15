cask 'fdr' do
  version '4.2.4'
  sha256 '127b0b4b4e7e571f4e910452cf393fdcca642575710d4ad9b30577ba8cb1be81'

  url 'https://www.cs.ox.ac.uk/projects/fdr/downloads/fdr-3800-mac-x86_64.zip'
  appcast 'https://www.cs.ox.ac.uk/projects/fdr/manual/changes.html'
  name 'FDR'
  homepage 'https://www.cs.ox.ac.uk/projects/fdr/'

  app "FDR#{version.major}.app"
end
