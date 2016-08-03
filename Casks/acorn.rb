cask 'acorn' do
  version '5.5'
  sha256 'd23a9f971a9a26d04ce08ba67ed3213e1d76c4b30830b365d505eb96cddb405a'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: '98c768230ae97e91f0a6b922970e82b11b887da1dc8179828a363851fe20de56'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
