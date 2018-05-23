cask 'freedom' do
  version '1.6.8'
  sha256 '1fbd20e6ca8772a67205ad3f2e200d7d14496479546f371b4db11fcbcb3d2213'

  url "https://cdn.freedom.to/installers/updates/mac/#{version}/Freedom.zip"
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '41865c55071391babb11444e9aec7a8d822787cee693bf56cac3fc9d4d4bf72c'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Freedom.app'
end
