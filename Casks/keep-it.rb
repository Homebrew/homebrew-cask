cask 'keep-it' do
  version '1.6.5'
  sha256 'e15e99ff31a8a2d48d1eb6114f1b9e18ac367567b7617349b6160e6aeab87421'

  url "https://reinventedsoftware.com/keepit/downloads/KeepIt_#{version}.dmg"
  appcast 'https://reinventedsoftware.com/keepit/downloads/keepit.xml'
  name 'Keep It'
  homepage 'https://reinventedsoftware.com/keepit/'

  depends_on macos: '>= :high_sierra'

  app 'Keep It.app'

  zap trash: [
               '~/Library/Containers/com.reinvented.Keep-It-Indexing',
               '~/Library/Containers/com.reinvented.Keep-It-Metadata',
               '~/Library/Containers/com.reinvented.Keep It',
             ]
end
