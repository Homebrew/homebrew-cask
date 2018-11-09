cask 'merlin-project' do
  version :latest
  sha256 :no_check

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://projectwizards.net/en/support/release-notes/merlin-project/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app 'Merlin Project.app'
end
