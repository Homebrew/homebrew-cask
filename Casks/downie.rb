cask 'downie' do
  version '2.9.5,1505'
  sha256 '41025d496ab9eafcd1f1edb9e5c9aa0fcbad32e444030333339d75df905b986e'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '8e63f501445ba7b6dedc74f1724d1a23c091bc45111002edc7bfc660fc311b6e'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
