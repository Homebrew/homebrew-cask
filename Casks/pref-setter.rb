cask :v1 => 'pref-setter' do
  version :latest
  sha256 :no_check

  url 'http://www.nightproductions.net/downloads/prefsetter.zip'
  homepage 'http://www.nightproductions.net/prefsetter.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pref Setter/Pref Setter.app'
end
