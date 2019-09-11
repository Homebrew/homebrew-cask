cask 'fdr' do
  version '4.2.3,3789'
  sha256 'c9a30591cd0f28cab68de59691c2ebe717134daa38eaac5803b19d0c086f123c'

  url "https://www.cs.ox.ac.uk/projects/fdr/downloads/fdr-#{version.after_comma}-mac-x86_64.zip"
  appcast 'https://www.cs.ox.ac.uk/projects/fdr/manual/changes.html'
  name 'FDR'
  homepage 'https://www.cs.ox.ac.uk/projects/fdr/'

  app "FDR#{version.major}.app"
end
