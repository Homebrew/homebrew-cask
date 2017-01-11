cask 'jet' do
  version '1.15.4'
  sha256 '7698cbabff953e8a04db4fecab83af32f61cc85a9d7e6bd741f50085740afaac'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
