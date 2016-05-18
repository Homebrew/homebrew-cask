cask 'grandtotal' do
  version '4.2'
  sha256 'b223effa0d5e8c5cc05e23eef251fa4654d7900ef0b863c45041a8f915d5f7d5'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: '71090c91129a355909b561497e3f58589af02245c23dfdf8b0429163b95996e4'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
