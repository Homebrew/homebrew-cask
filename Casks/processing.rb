cask 'processing' do
  version '3.3.2'
  sha256 '4797b00bd0b8ef19bff355059abe81b7b10fffdc60c5fd90bb643b707fcab033'

  url "http://download.processing.org/processing-#{version}-macosx.zip"
  appcast 'https://github.com/processing/processing/releases.atom',
          checkpoint: 'b848a8e099ac8d3eff94ba98fd0609dbaa57f6892a48f477b59c09bfe1ecc20d'
  name 'Processing'
  homepage 'https://processing.org/'

  app 'Processing.app'

  zap delete: '~/Library/Processing/preferences.txt'
end
