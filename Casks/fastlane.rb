cask 'fastlane' do
  version '1.5'
  sha256 '288912793eddb5568159041df482a5f5cbafb7e9085c51612500e1f3ccbcfc6d'

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
