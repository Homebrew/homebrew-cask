cask 'keep-it' do
  version '1.6.4'
  sha256 '0fb28b26ea241603641a9e1be54f1898b449fdb4d3b4012658246eb6064ebdfb'

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
