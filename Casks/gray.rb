cask 'gray' do
  version '0.9.3'
  sha256 '0d9566ec7741603ddfcee4a241370aab97605b874ee168e79d0ea89b587b8154'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
