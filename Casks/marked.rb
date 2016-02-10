cask 'marked' do
  version '2.5.4915'
  sha256 '35f305d124b92724cc7a9140561580949f2d06e0747d4124d860412cb62dbe79'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'http://abyss.designheresy.com/marked/marked.xml',
          checkpoint: 'fac95d3b4091df5d80910403d0f78c0944b908a1098642fcb43b332b930c285c'
  name 'Marked'
  homepage 'http://marked2app.com'
  license :commercial

  auto_updates true

  app 'Marked 2.app'
end
