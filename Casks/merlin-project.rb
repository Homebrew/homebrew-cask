cask 'merlin-project' do
  version '6.1.0'
  sha256 '3903466aa16899653d6122274b2cf68b2f9f4007442e8c63ca8bae01343fde32'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
