cask 'fastlane' do
  version '1.1'
  sha256 '268311ce7e68a3286f1b97304638d07b50cd3be47dbd3c0e478190d6e340364f'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools/'

  installer script: "#{staged_path}/install", args: ['-p', '-u', '-b'], sudo: false

  uninstall script: { executable: "#{staged_path}/uninstall", args: ['-y'], sudo: false }
end
