cask 'jami' do
  version '20200423.0658'
  sha256 'b1bae3453e7bea0982f1c64d07a7b8684cab56e633a29902f970560221ba3934'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
