cask 'gray' do
  version '0.9.6'
  sha256 '1cc4ff26a42f6529a6fb37bab2ac20899c1d1a78556c84f7bdaff4cb443c0585'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
