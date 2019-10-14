cask 'gray' do
  version '0.15.0'
  sha256 'a7835a29066534240ceca16063bba45a443613d8c3deeaad395693658ee918cf'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
