cask 'gray' do
  version '0.12.0'
  sha256 'bfe5900bf00ec8173dbf921d2077b2abe8a5dffb3ff7ff21ab8321688260db67'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
