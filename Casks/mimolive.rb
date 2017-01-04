cask 'mimolive' do
  version '2.7-22670'
  sha256 'c787e3ae90c65b71a6ef38f175696c331c05a2761fdcdd806ef21db4a2fe38a7'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect//histories/mimolive',
          checkpoint: '9140b55eb1d6c446ba4ff0898baa2fb1b53731134e6e89ff50e344a16a3ec378'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :yosemite'

  app 'mimoLive.app'
end
