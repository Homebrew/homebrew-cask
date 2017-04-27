cask 'fastlane' do
  version :latest
  sha256 :no_check

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url 'https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/fastlane.zip'
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
