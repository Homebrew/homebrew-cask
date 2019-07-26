cask 'keep-it' do
  version '1.6.16'
  sha256 '0d1aa79d7da3f7b615ee7fa004c508ccf154d52a718f5d000bc9aa1ed6d00ecf'

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
