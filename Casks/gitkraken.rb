cask 'gitkraken' do
  version :latest
  sha256 :no_check

  url 'http://release.gitkraken.com/darwin/installGitKraken.dmg'
  name 'GitKraken'
  homepage 'http://www.gitkraken.com'
  license :gratis

  app 'GitKraken.app'
end
