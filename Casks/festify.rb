cask 'festify' do
  version '0.2.6'
  sha256 '3d6c789f92988d197b8d4bba0782adb83e6a81b9a38f73c9e5233f3ff3390804'

  url "https://github.com/Festify/app/releases/download/v#{version}/Festify-#{version}.dmg"
  name 'Festify'
  homepage 'https://github.com/festify'

  app 'Festify.app'
end
