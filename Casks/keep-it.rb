cask 'keep-it' do
  version '1.8.5'
  sha256 '8d38683b97f4fa982a7954342abe287eee48fa6d0a2dd02073760354a25cb9a1'

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/keepit/downloads/keepit.xml'
  name 'Keep It'
  homepage 'https://reinventedsoftware.com/keepit/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Keep It.app'

  zap trash: [
               '~/Library/Containers/com.reinvented.Keep-It-Indexing',
               '~/Library/Containers/com.reinvented.Keep-It-Metadata',
               '~/Library/Containers/com.reinvented.Keep It',
             ]
end
