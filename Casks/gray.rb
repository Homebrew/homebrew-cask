cask 'gray' do
  version '0.11.0'
  sha256 'f48c2962d19f6b4a2285e9757ae3ec1c506ff6dc796db79ca07a6a00bd88754a'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
