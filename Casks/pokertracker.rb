cask :v1 => 'pokertracker' do
  version '4.10.6'
  sha256 '913b47d2593dab9ecde628a754677acdeff2992e1f20d428ce6913f3a74af4d9'

  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  homepage 'https://www.pokertracker.com'
  license :unknown    # todo: improve this machine-generated value

  app 'PokerTracker 4.app'
end
