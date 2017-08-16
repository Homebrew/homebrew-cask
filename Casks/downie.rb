cask 'downie' do
  version '2.9.9,1521'
  sha256 '270e22205e893c41257fd808d6a42a49316dce79c38cb98ee87fd9f6e6feb06e'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '2f38958d516214dbd62137332f4176d03af174824cf3e7ed04a1a90e419375c5'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
