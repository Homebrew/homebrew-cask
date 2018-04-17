cask 'coronasdk' do
  version '2017.3184'
  sha256 '54fe7dfd2e9e67a948e08fc4f50c77136d22b4bdeb23f48b13ecb123da1098ae'

  url "https://developer.coronalabs.com/sites/default/files/Corona-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/'

  suite 'Corona'
end
