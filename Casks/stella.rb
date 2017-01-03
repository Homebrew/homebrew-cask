cask 'stella' do
  version '4.7.3'
  sha256 'b78cc81541830bc054318858e11dc07254bf1e7c64095f19479f8301b42aab77'

  url "https://downloads.sourceforge.net/stella/stella/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/stella/rss?path=/stella',
          checkpoint: '880727ceb05e13b21bbd463ab9e090761e7ca74e17c15056e163c93263819a3c'
  name 'Stella'
  homepage 'http://stella.sourceforge.net/'

  app 'Stella.app'
end
