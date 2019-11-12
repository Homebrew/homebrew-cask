cask 'merlin-project' do
  version '6.0.1'
  sha256 '0bf458742fcf0420ddc30bc2c574ad1d9d76e143d32061b902e77fc7ee9307ee'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
