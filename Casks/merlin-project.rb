cask 'merlin-project' do
  version '5.0.10'
  sha256 'ccb278feb10ea9098ca18b98f64864712b7e3a24972d6133cd5df310de4ee658'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
