cask 'gfxcardstatus' do
  version '2.3'
  sha256 '092b3e2fad44681ba396cf498707c8b6c228fd55310770a8323ebb9344b4d9a1'

  url "https://gfx.io/downloads/gfxCardStatus-#{version}.zip"
  appcast 'https://gfx.io/appcast.xml',
          checkpoint: 'c52a51d2da8795e12eceb2d035f45ceb44197a480883408f9ea7cff96e7d2c90'
  name 'gfxCardStatus'
  homepage 'https://gfx.io/'

  app 'gfxCardStatus.app'
end
