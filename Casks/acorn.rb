cask 'acorn' do
  version '5.2.1'
  sha256 '523665d59ebcd41d7ee5b919ab6ab981c30c1182bbd9b0ad6e2cfde531776358'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: 'b2909976dfa2c42442e2ab18fb5477c1622eb468361c77e4cfa705b58338269c'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
