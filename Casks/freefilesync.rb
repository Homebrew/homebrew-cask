cask 'freefilesync' do
  version '9.3'
  sha256 '987e3f1d1d142ac43896c0c7c9d96498771590e6958c1b44e06938ec61cfb79c'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
