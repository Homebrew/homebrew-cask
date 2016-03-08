cask 'marked' do
  version '2.5.4916'
  sha256 '57f3c418aecbdbb07828f802c2ed13bc20d5b6fb0d3756540ae174f98168b04c'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'http://abyss.designheresy.com/marked/marked.xml',
          checkpoint: 'f62cde7197f9ed9158949acd45079dabe3de5a8a5ec8633c8d4a116333dd187c'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  auto_updates true

  app 'Marked 2.app'
end
