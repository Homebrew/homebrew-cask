cask 'merlin-project' do
  version '5.1.5'
  sha256 '9b1ad1d71c03be2a403b96352aeaf5a26747b0f3103fbcde257e250934839798'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
