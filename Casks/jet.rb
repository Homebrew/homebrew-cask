cask 'jet' do
  version '2.6.0'
  sha256 '35428fea9ee9eae916cf84b6327bb21228bef04effebbf01ced6d70b5fe1d435'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  appcast 'https://documentation.codeship.com/pro/jet-cli/release-notes/',
          checkpoint: 'ad4e8df437bea5785079ee027e2e3fd76020ac4627d909eb034678c77e3dd034'
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/builds-and-configuration/cli/'

  binary 'jet'
end
