cask 'merlin-project' do
  version '5.1.7'
  sha256 'be02d779b7a08e2839b0c763ac29b70825e883e407adac8670e2e5be2825c8f1'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
