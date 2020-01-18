cask 'macdropany' do
  version '4.0.0-beta.1'
  sha256 '28b5c73e8fe49dcf9b073fe99b2a6472b5b945187f6436bea4bf4cdeebb040b4'

  url "https://github.com/sebthedev/MacDropAny/releases/download/v#{version}/MacDropAny.#{version}.zip"
  appcast 'https://github.com/sebthedev/MacDropAny/releases.atom'
  name 'MacDropAny'
  homepage 'https://github.com/sebthedev/MacDropAny'

  depends_on macos: '>= :yosemite'

  app 'MacDropAny.app'

  zap trash: '~/Library/Services/Sync via MacDropAny.workflow'
end
