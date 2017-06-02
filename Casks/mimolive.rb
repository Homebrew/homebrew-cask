cask 'mimolive' do
  version '2.9-23073'
  sha256 '182b017d87f164378a20560fd929869e98434ae369a9cddab42400afbf3011e0'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect//histories/mimolive',
          checkpoint: '3370379dc4e03822a6cb9cb8767abb191e127a737941e3f0748d437a9658970d'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
