cask :v1 => 'sparkle' do
  version '1.11.1'
  sha256 'bfa298d1160d4af4469245cc0feb7e5e5101f127f167f5ba89d5ce2b154afeec'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
