cask 'fastlane' do
  version '1.7'
  sha256 'fc5fb2f28229cd02f49586f30da7075d557cae8fb6717f4c5d4e195fc3eb3beb'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: "#{staged_path}/install",
            args:   ['-p', '-u', '-b']

  uninstall script: {
                      executable: "#{staged_path}/uninstall",
                      args:       ['-y'],
                    }
end
