cask 'downie' do
  version '3.1676'
  sha256 '522aee338184f5665d30105c71fc5f4bc2ff2b49bd7f49c95eab9f9856433a34'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.dots_to_underscores}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '99690af028f2a82d3b25618a0513fb9ac83d7be98e22a36fe7da8834f113202c'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
