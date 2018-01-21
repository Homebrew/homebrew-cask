cask 'revisions' do
  version '3.0'
  sha256 'e10572e35ee2421b6406cb599e8d4338d9cbc5d848378617362104f2069f14f1'

  url "https://revisionsapp.com/downloads/revisions-#{version}.dmg"
  appcast 'https://revisionsapp.com/releases',
          checkpoint: 'cdfa5b665f80b2f3584914cdbe9b17441e692df4e3e3169f64b27f36b60a1dd3'
  name 'Revisions'
  homepage 'https://revisionsapp.com/'

  app 'Revisions.app'
end
