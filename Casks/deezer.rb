cask 'deezer' do
  version '1.1.1_4202'
  sha256 'f0871b4cd7fd70b109cf6671a5d4a353ed419e617ca1be028f26742efea25ff4'

  url "http://e-cdn-content.deezer.com/builds/mac/Deezer_#{version.sub(%r{.*_}, '')}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => [
                   '~/Library/Application Support/Deezer',
                   '~/Library/Preferences/com.deezer.Deezer.plist',
                 ]
end
