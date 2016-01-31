cask 'crashlytics' do
  version '2.6.25_419'
  sha256 'b671cbd7deacb00fbb9fe5b16dbef074ae094a0d80a54382eee7641b1f7fb063'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/builds/Crashlytics-#{version.sub(%r{.*_}, '')}.zip"
  # amazonaws.com verified as official when first introduced to the cask
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/mac/version.xml',
          checkpoint: '5795458712cc0d1e3a76cdbf5a58c00a98ca5cf72c52948859a9b5668365d8bb'
  name 'Crashlytics'
  homepage 'https://crashlytics.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Crashlytics.app'
end
