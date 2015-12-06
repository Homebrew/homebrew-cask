cask :v1 => 'gitkraken' do
  version :latest
  sha256 :no_check

  url 'https://release.gitkraken.com/darwin/installGitKraken.dmg'
  name 'GitKraken'
  homepage 'http://www.gitkraken.com'
  license :gratis

  app 'GitKraken.app'
end
