cask :v1 => 'nodeclipse' do
  version '0.11-preview'
  sha256 '01f630446313cb981ce2ee9b934977cfdbf318e09761dee244a3256f9a559003'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/nodeclipse/Enide-Studio-2014/#{version}/Enide-Studio-2014-011-20140228-macosx-cocoa-x86_64.zip"
  name 'Nodeclipse'
  homepage 'http://www.nodeclipse.org/'
  license :oss

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8183
  app 'eclipse/Eclipse.app', :target => 'Nodeclipse.app'
end
