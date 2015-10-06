cask :v1 => 'manico' do
  version '1.4.4'
  sha256 '5ed0a86c5597d98d0eab107c95824781d77654ff7224425f9c63134ab996ff01'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-appcast.xml',
          :sha256 => 'e84ff7a3aa6f18f60037918e79057d970b21ff6e8da2d4479f7308429bd4ff67'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'
end
