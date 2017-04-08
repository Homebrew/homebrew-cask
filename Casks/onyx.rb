cask 'onyx' do
  if MacOS.version == :el_capitan
    version '3.1.8'
    sha256 '9d46d09346666a4dcecd0c92eb1bebd76c76f145744926ebda594831d45724ab'
  else
    version '3.2.4'
    sha256 '068b9d4df199727ecf750879b943efc9b5813aab318cca05f937be7f9a075d81'
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete('.')}/OnyX.dmg"
  appcast 'http://www.titanium-software.fr/en/release_onyx.html',
          checkpoint: '91046a29eec018e16d37414affd7d2fd898e650934f51918324b3e163ef1978f'
  name 'OnyX'
  homepage 'https://www.titanium-software.fr/en/onyx.html'

  depends_on macos: '>= :el_capitan'

  app 'OnyX.app'
end
