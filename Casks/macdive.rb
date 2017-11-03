cask 'macdive' do
  version '2.8.4'
  sha256 'd55ee1f3274bfadfc0c4e61ba4b5071457b86603861081cd3a0c323c8f679a63'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '4238d595796f6334775933bd654c9b5a30994ebe27f81ba772174ef551a56d4f'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
