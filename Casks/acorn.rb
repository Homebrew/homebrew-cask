cask :v1 => 'acorn' do
  version :latest
  sha256 :no_check

  url 'http://flyingmeat.com/download/Acorn.zip'
  name 'Acorn'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          :sha256 => '62f48162e1f7d0d8d03e13dd47411714d86afb0e8a2f7b5c95bd3d9906e66da9'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
