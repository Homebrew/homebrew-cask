cask 'fastlane' do
  version '1.8'
  sha256 '74bf78e033b64036b80832f92ece77fb12831f50380e60d5c9c7677aa433ff4b'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: {
                      executable: "#{staged_path}/install",
                      args:       ['-p', '-u', '-b'],
                    }

  uninstall script: {
                      executable: "#{staged_path}/uninstall",
                      args:       ['-y'],
                    }
end
