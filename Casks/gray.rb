cask 'gray' do
  version '0.9.8'
  sha256 '5d70afb6ce2b4ec29504abdeb58913cffb147c110986e6d77dad4d0c8482e6be'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
