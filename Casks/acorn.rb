cask :v1 => 'acorn' do
  version :latest
  sha256 :no_check

  url 'http://flyingmeat.com/download/Acorn.zip'
  name 'Acorn'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          :sha256 => '9d92a6f8092e0559d3b00d94a2e05c8b0f6d26bc3dc5cbea004a53291eb6504d'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
