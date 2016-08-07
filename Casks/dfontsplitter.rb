cask 'dfontsplitter' do
  version '0.4.2'
  sha256 '6297da5d4f6d2f8d92eb35364178ea7972a54df7576dbd801cc483a88a7d49ad'

  url "https://peter.upfold.org.uk/files/dfontsplitter/dfontsplitter-#{version}-mac.zip"
  appcast 'https://apps.upfold.org.uk/appupdate/dfontsplitter.xml',
          checkpoint: 'ead408294b7d718d1e30c6963492889a5b4cc07fef47fcc8c7c30f913c092664'
  name 'DfontSplitter'
  homepage 'https://peter.upfold.org.uk/projects/dfontsplitter'
  license :gpl

  app 'DfontSplitter.app'
end
