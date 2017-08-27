cask 'festify' do
  version '0.2.6'
  sha256 '3d6c789f92988d197b8d4bba0782adb83e6a81b9a38f73c9e5233f3ff3390804'

  url "https://github.com/festify/app/releases/download/v#{version}/Festify-#{version}.dmg"
  name 'Festify'
  homepage 'https://github.com/festify/app'

  appcast 'https://github.com/Festify/app/releases.atom',
            checkpoint: '03af11f99136809bbc144b48fb06ff51cb404e58af6a3bbe3487c7c932530056'

  app 'Festify.app'
end
