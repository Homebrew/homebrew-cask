cask 'keep-it' do
  version '1.8'
  sha256 '6149571831246d9bc02e8b33fd408a70911e734e96c528a443f0cff7057ab772'

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
