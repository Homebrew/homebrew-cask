cask 'marked' do
  version '2.5.5921'
  sha256 '665d9f9094dec4597ebc103c5f8237d6b1ae65bf6f02fbd7a57c8a3033995020'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'http://abyss.designheresy.com/marked/marked.xml',
          checkpoint: 'f62cde7197f9ed9158949acd45079dabe3de5a8a5ec8633c8d4a116333dd187c'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  auto_updates true

  app 'Marked 2.app'
end
