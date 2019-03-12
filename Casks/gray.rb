cask 'gray' do
  version '0.10.0'
  sha256 'f96e57d45fb8e7adc631c6580a6485c8672521a6d314443d0621b6f4da3c68f1'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
