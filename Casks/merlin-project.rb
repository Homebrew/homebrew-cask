cask 'merlin-project' do
  version '5.0.8'
  sha256 '10d1e2eccac7888cfca4100b4968d5cc588ebe741e09413a3ab37c78a2f7af41'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://projectwizards.net/en/support/release-notes/merlin-project/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
