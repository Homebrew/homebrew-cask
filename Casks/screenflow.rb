cask 'screenflow' do
  version '7.1.1'
  sha256 '06b880cbff146da8d3cacbc5b78d2d1cfbda99e01b8314204041816461c65f18'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  appcast 'https://www.telestream.net/updater/screenflow/appcast.xml',
          checkpoint: '2ee00d2886035bfc23078ce6d4856a6bc6fe12bb1263289ce51fbca90984b46e'
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'ScreenFlow.app'
end
