cask 'sweet-home3d' do
  version '5.5.2'
  sha256 '095e859b09b9e6863da82f531ac1c988c1c990104333c8a3ada26efa13dfffe4'

  # sourceforge.net/sweethome3d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sweethome3d/SweetHome3D/SweetHome3D-#{version}/SweetHome3D-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sweethome3d/rss?path=/SweetHome3D',
          checkpoint: '1f228a05f8dfa97c3b238c8e2eb0d1258d25e6bb0d837a2b597b7a2f8036a2c7'
  name 'Sweet Home 3D'
  homepage 'http://www.sweethome3d.com/'

  app 'Sweet Home 3D.app'
end
