cask 'bob' do
  version '0.4.0'
  sha256 '2862b11cd2cb456a1b684e5a7d06fc4dc6433ad1c18af4d61c04a4dbc1150a30'

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.app.zip"
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
