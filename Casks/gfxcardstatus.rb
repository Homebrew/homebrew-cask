cask :v1 => 'gfxcardstatus' do
  version '2.3'
  sha256 '092b3e2fad44681ba396cf498707c8b6c228fd55310770a8323ebb9344b4d9a1'

  url "https://gfx.io/downloads/gfxCardStatus-#{version}.zip"
  appcast 'https://gfx.io/appcast.xml',
          :sha256 => 'cc01a7466eb53f425920046a5b7ea0a23b35bd431b7ccca9c77bd8fa407cd718'
  name 'gfxCardStatus'
  homepage 'https://gfx.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'gfxCardStatus.app'
end
