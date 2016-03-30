cask 'acorn' do
  version '5.3.1'
  sha256 'b85eb989ccce80c9aac47ae9775c45ee3de83c65fb9021a887b308d3a27eb16e'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: '611f52dd08022d2692f9ca7b1f6b2a74572440ae665a9f026adfabbaea536c73'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
