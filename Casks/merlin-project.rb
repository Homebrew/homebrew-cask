cask 'merlin-project' do
  version '5.1.3'
  sha256 'ebf4bbd73f9f7e8b329c75646d67d74e7b34031713308673b1b07e769b2ffd38'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
