cask 'pock' do
  version '0.5.2'
  sha256 'cf62bb611a7aaa3f298322f9f5dd8646b1d5333ef4bfbdb8edd2c14bdc87ec8f'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}_lack.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end
