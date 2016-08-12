cask 'acorn' do
  version '5.5.1'
  sha256 'df44e48376254355064b7b130ef8d05e29c9d6183786d72fd4eee1a50bffbd64'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast 'http://www.flyingmeat.com/download/acorn5update.xml',
          checkpoint: 'd9cfab3957f43d1856e2b88aa35cbd13b02e2a29d8c26c14322ad56e26d8ba49'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'
  license :commercial

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
