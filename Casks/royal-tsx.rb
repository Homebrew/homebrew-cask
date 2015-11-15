cask :v1 => 'royal-tsx' do
  version '2.2.1.1'
  sha256 '5041be5501b87612070677efe0b3752e6051833033a95c9f0ba99a72833ef34e'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '326f26d7c0d628d5fbccfdb4986593a5da5288b26d71bbfa7e504747cb08d309'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
