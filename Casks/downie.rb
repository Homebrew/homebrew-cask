cask 'downie' do
  version '3.1661'
  sha256 'dc0c1f0183756a5199f26f81c3274c18ab151cc0b1e8e6dab919df63484e99d7'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.dots_to_underscores}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '99690af028f2a82d3b25618a0513fb9ac83d7be98e22a36fe7da8834f113202c'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
