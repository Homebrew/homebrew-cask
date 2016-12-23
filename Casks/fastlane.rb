cask 'fastlane' do
  version '1.3'
  sha256 '2645702993105b286b2f54b91058aaa3fcd482c400b507478a9fad42c273631b'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: "#{staged_path}/install", args: ['-p', '-u', '-b'], sudo: false

  uninstall script: { executable: "#{staged_path}/uninstall", args: ['-y'], sudo: false }
end
