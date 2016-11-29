cask 'lexiloader' do
  version '30'
  sha256 '68c0d9482fe8f3b8c7251b452929ba4b58bbfdf478f5dc68740edc09fd87d860'

  # dl.dropboxusercontent.com/u/6682148 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/6682148/LexiLoader_v#{version}.zip"
  name 'LexiLoader'
  homepage 'http://www.pocketsoap.com/osx/lexiloader/'

  app 'LexiLoader.app'
end
