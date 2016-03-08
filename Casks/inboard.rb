cask 'inboard' do
  version '1.0.7-282'
  sha256 'bbfb7a01e9847da750359707da2537251a59a1c9fb2be1f63c9d163fafe7e422'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: 'b3a5852bc0ee7dce9f0617abec4c47f24c078ea28c35a73f7b5b63bfe9ad7e25'
  name 'Inboard'
  homepage 'http://inboardapp.com'
  license :commercial

  app 'Inboard.app'
end
