cask 'bob' do
  version '0.2.0'
  sha256 '71d704868cc63c31f816c1b008ab29a5e15152ada8031b98215921de7fab5e13'

  url "https://github.com/ripperhe/Bob/releases/download/#{version}/Bob.app.zip"
  appcast 'https://github.com/ripperhe/Bob/releases.atom'
  name 'Bob'
  homepage 'https://github.com/ripperhe/Bob'

  depends_on macos: '>= :sierra'

  app 'Bob.app'

  zap trash: [
               '~/Library/Preferences/com.ripperhe.Bob.plist',
               '~/Library/Caches/com.ripperhe.Bob',
             ]
end
