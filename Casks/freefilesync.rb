cask 'freefilesync' do
  version '9.9'
  sha256 '0be28be3a88a1222b9e0054c7f1e79acd2f9ca5f62ed0c20869ef868a510d82a'

  url "http://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip",
      user_agent: :fake
  name 'FreeFileSync'
  homepage 'https://www.freefilesync.org/'

  app 'FreeFileSync.app'
  app 'RealTimeSync.app'
end
