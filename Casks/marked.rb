cask :v1 => 'marked' do
  version :latest
  sha256 :no_check

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'http://abyss.designheresy.com/marked/marked.xml'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  app 'Marked 2.app'
end
