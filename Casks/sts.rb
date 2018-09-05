cask 'sts' do
  version '3.9.5.RELEASE,4.8.0'
  sha256 '6841719407b971be35a212f9c74e67301e8d059b235552206b59fc0c9db36ef0'

  # download.springsource.com/release/STS was verified as official when first introduced to the cask
  url "http://download.springsource.com/release/STS/#{version.before_comma}/dist/e#{version.after_comma.major_minor}/spring-tool-suite-#{version.before_comma}-e#{version.after_comma}-macosx-cocoa-x86_64.dmg"
  name 'Spring Tool Suite'
  homepage 'https://spring.io/tools/sts'

  auto_updates true

  app 'STS.app'
end
