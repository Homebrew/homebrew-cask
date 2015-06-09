cask :v1 => 'acorn' do
  version :latest
  sha256 :no_check

  url 'http://flyingmeat.com/download/Acorn.zip'
  name 'Acorn'
  appcast 'http://www.flyingmeat.com/download/acorn4update.xml',
          :sha256 => '190b994807371fa5d7acde2178af97d549ecf95b349e5d9cf40ca854c0160caf'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
