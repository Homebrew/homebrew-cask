cask :v1 => 'genymotion' do
  version '2.5.2'
  sha256 'b85f64c0d260befdb8a60132da98841cce2635cd8b72e5f254526603638095cb'

  depends_on :cask => 'virtualbox'

  url "http://files2.genymotion.com/genymotion/genymotion-#{version}/genymotion-#{version}.dmg"
  name 'Genymotion'
  homepage 'https://www.genymotion.com/'
  license :commercial

  app 'Genymotion.app'
  app 'Genymotion Shell.app'
  binary 'Genymotion Shell.app/Contents/MacOS/genyshell'

  caveats do
    files_in_usr_local
  end
end
