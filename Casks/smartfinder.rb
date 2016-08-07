cask 'smartfinder' do
  version :latest
  sha256 :no_check

  url 'https://sf.smartisan.com/sf/release/download'
  name 'Smart Finder'
  homepage 'http://www.smartisan.com/apps/smartfinder'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SmartFinder.app'
end
