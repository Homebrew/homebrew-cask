cask :v1 => 'koko' do
  version '0.2.0'
  sha256 '68febd6299ed082c24d849445f26eacd5a49f4d010b4c10943ee8953d14fe5ce'

  url "https://github.com/noraesae/koko/releases/download/v#{version}/koko-mac.zip"
  appcast 'https://github.com/noraesae/koko/releases.atom'
  name 'Koko'
  homepage 'https://github.com/noraesae/koko'
  license :mit

  app 'Koko.app'
end
