cask :v1 => 'droplr' do
  version '4.5.1-65'
  sha256 'eff5612ff8588345120c50d2bc5ec946c7a74c1e5611cbc7f98ad39e8ac5a8a2'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://files.droplr.com.s3.amazonaws.com/apps/mac/Droplr+#{version.sub(%r{.*-},'')}.zip"
  appcast 'https://droplr.com/appcast/appcast.xml',
          :sha256 => '8fea3a3e6c84f48d332d1af23af0cdccd7ac5bc8817eb7829e4dea74c41c34fc'
  name 'Droplr'
  homepage 'https://www.droplr.com/'
  license :freemium

  depends_on :macos => '>= :mavericks'
  depends_on :arch => [:x86_64, :ppc_64]

  app 'Droplr.app'

  zap :delete => '~/Library/Preferences/com.droplr.droplr-mac.plist'
end
