cask :v1 => 'preferencecleaner' do
  version :latest
  sha256 :no_check

  url 'http://www.echomist.co.uk/software/downloads/PreferenceCleaner.dmg'
  name 'PreferenceCleaner'
  homepage 'http://www.echomist.co.uk/software/PreferenceCleaner.shtml'
  license :gratis

  app 'PreferenceCleaner.app'
end
