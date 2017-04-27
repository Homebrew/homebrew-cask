cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.9'
    sha256 '7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536'
  else
    version '3.2.5'
    sha256 '068b9d4df199727ecf750879b943efc9b5813aab318cca05f937be7f9a075d81'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: 'c16bcf20fc23cb0da4e45e8b1eef97f8fb2315c3860c672c2d397907e6835e60'
  name 'OnyX'
  homepage 'https://www.titanium-software.fr/en/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
