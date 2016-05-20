cask 'acorn' do
  version '5.4'
  sha256 '9065ae8493fa73bfdf5d29ffcd0012cd343475cf3d550ae526407b9910eb35b7'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: '95ffe5b581434db6284ed8dfe0cddead69a5d3f7269ca488baba3bd1218e43f7'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
