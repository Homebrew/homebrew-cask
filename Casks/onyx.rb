cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.8'
    sha256 '9d46d09346666a4dcecd0c92eb1bebd76c76f145744926ebda594831d45724ab'
  else
    version '3.2.5'
    sha256 '068b9d4df199727ecf750879b943efc9b5813aab318cca05f937be7f9a075d81'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: 'dbf3a781dd00731b9d9e00d72580d1b32c2caefdac2b846b1540bf1d4d97cda2'
  name 'OnyX'
  homepage 'https://www.titanium-software.fr/en/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
