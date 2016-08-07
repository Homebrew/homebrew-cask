cask 'iordning' do
  version '6.0.53'
  sha256 '4ea8d0246d8fa1bbd6d6fafcd0dc34b739b4543afd34f398bd2acd5be9f95084'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.major}.zip"
  appcast 'https://www.aderstedtsoftware.com/economacs/v6_appcast.xml',
          checkpoint: 'cb908d247b0bac307e0adbf196c1bac43a0e46b0142be22da4a07ce593098212'
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://aderstedtsoftware.com/'
  license :commercial

  app 'iOrdning.app'
end
