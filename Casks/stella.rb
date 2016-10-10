cask 'stella' do
  version '4.6.6'
  sha256 'afbe3bf9f5564c18720f59a8336d20e920120a5219e49a6b7373be7475841cb9'

  url "https://downloads.sourceforge.net/stella/stella/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/stella/rss?path=/stella',
          checkpoint: '096a0719ee88287c5523ac52be377b76776d61bc9f6f4f018f68f177031833eb'
  name 'Stella'
  homepage 'http://stella.sourceforge.net'

  app 'Stella.app'
end
