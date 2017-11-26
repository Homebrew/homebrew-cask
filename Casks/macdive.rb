cask 'macdive' do
  version '2.8.5'
  sha256 '1c0bd668bcc78fd7dcf6bb206076ce5d7f259a97c6c4e560822b184f7b2beb45'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '0784880b303bb6d532c86233b3616da5990d401161d3d29b809eeea245b31c1a'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
