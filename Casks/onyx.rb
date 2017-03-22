cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.8'
    sha256 '9d46d09346666a4dcecd0c92eb1bebd76c76f145744926ebda594831d45724ab'
  else
    version '3.2.4'
    sha256 '10da0a9126080bdf36e3b0a8a7a47e1fdf9eadfe6282e4b502150e020d1fc4d5'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: 'ae7c39cba93b9d724adc82dadd2ca421ec39551c7bb7e42487aee9a6e7f49fb9'
  name 'OnyX'
  homepage 'http://www.titanium-software.fr/en/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
