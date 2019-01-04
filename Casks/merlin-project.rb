cask 'merlin-project' do
  version '5.0.9'
  sha256 '1770bc7c13f2d9f97e7d31629c5979d8da2bb2c4835a74f4fa7145c805c72247'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
