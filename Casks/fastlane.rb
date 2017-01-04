cask 'fastlane' do
  version '1.4'
  sha256 'dba9444d7bfeb48c6c50ee9fd481f211ff1beb503092a1c5597d83c6c78eb823'

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
