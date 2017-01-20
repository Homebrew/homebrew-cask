cask 'fastlane' do
  version '1.6'
  sha256 '4922f5815f0920260fa8dc1a9ce6163832c2b34ebf71c0386606dd4aa08db927'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: "#{staged_path}/install",
            args:   ['-p', '-u', '-b'],
            sudo:   false

  uninstall script: {
                      executable: "#{staged_path}/uninstall",
                      args:       ['-y'],
                      sudo:       false,
                    }
end
