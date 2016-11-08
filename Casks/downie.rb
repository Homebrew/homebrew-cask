cask 'downie' do
  version '2.5.8,1336'
  sha256 '51dc2ba14b213a12294c738d6eb787e1ea9518f7d5cd8c8aef9dbf197be625e1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'ef9da41ac56a1e6369d013d74f7cf7d996918d526e339bba7f86409e780047ea'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
