cask 'stand' do
  version '1.0_4'
  sha256 '8919e43c9c591657d8d6961b25e8dc5f77d706d71eb246839be22522a82bb0ec'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://get-stand-app.s3.amazonaws.com/#{version.sub(%r{.*_}, '')}/Stand.zip"
  appcast 'https://standapp-sparkle-updater.herokuapp.com/',
          checkpoint: 'e8440576a4be7c429f6e1a1235992ddc259389767a7127c5ee2968c59c83584f'
  name 'Stand'
  homepage 'https://getstandapp.com/'
  license :gratis

  app 'Stand.app'
end
