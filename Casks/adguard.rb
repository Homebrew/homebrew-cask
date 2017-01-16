cask 'adguard' do
  version '1.4.0'
  sha256 '549f8a7f4f773bd04bb9c2f16a3817b7cb4b6acc4beab06aa6f930cd0797df28'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '836f3f1161afdb22704e79aa54aa4930a56036b494cc8579a1ed041522fff864'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'
end
