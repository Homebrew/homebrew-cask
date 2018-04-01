cask 'hype' do
  version '3.6.3'
  sha256 '5bff8dd6b3286086027709ffd47f990a36160ba881ab6228cc25ddb32dcdbc49'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '47284199a6594d0703a56b7e257efaec6a8d39b73028ba0106c6a6ab0de94cfe'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
