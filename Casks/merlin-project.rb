cask 'merlin-project' do
  version '5.1.6'
  sha256 '89a7c7ad15e0dc4b0501d372c3a96a263a39928c478650f5b03fd9e27afca902'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
