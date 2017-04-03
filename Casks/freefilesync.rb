cask 'freefilesync' do
  version '8.9'
  sha256 'aa7972d8b6fa11f198bb78bb55128eca91be18d54fa57c84f25eeddfd9815996'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
