cask :v1 => 'sparkle' do
  version '1.12.0'
  sha256 '6bb51df70771769932c019e0ffd8846c320dc81871a1a045a99017560085ce28'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
