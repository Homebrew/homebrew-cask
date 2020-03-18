cask 'merlin-project' do
  version '6.2.0'
  sha256 '727162d7e524f86fc57dfdbc52da6ffaff8b9a0197aa4437e94d4bd4f887b316'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  depends_on macos: '>= :sierra'

  app "Merlin Project #{version.major}.app"
end
