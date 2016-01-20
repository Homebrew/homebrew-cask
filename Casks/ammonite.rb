cask 'ammonite' do
  version '1.13'
  sha256 '1a76406380fe633b475539b8238fdb4dd7667572caa44544bcd0dc110d636962'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: 'a243a8a9e8e58b84895a01b8718b88ad386762d9ebe659bfa93499def9222e5f'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'
  license :closed

  app 'Ammonite.app'
end
