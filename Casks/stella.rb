cask 'stella' do
  version '4.6.6'
  sha256 'afbe3bf9f5564c18720f59a8336d20e920120a5219e49a6b7373be7475841cb9'

  url "http://downloads.sourceforge.net/project/stella/stella/#{version}/Stella-#{version}-macosx.dmg"
  name 'Stella'
  homepage 'http://stella.sourceforge.net'
  license :gpl

  app 'Stella.app'
end
