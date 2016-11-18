cask 'fastlane' do
  version '1.0'
  sha256 'f642cdae3d4841f85d4a9260866361d136fad82974cf5905629d48f70d86f294'

  # kits-crashlytics-com.s3.amazonaws.com/fastlane/ was verified as official when first introduced to the cask
  url "https://kits-crashlytics-com.s3.amazonaws.com/fastlane/standalone/bundle-#{version}.zip"
  name 'fastlane'
  homepage 'https://fastlane.tools'

  installer script: "#{staged_path}/install", args: ['-p', '-u', '-b'], sudo: false

  uninstall script: { executable: "#{staged_path}/uninstall", args: ['-y'], sudo: false }
end
