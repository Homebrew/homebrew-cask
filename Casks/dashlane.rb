cask 'dashlane' do
  version '6.1844.0.14691'
  sha256 '492432dc0bdae1482be7575ed1ad360b76f5c86b9546a9d2296d06b655a1f360'

  # d3mfqat9ni8wb5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/DashlaneInstaller.zip"
  appcast 'https://ws1.dashlane.com/5/binaries/query?target=archive&format=xml&currentSoftwareVersion=6.0.0&platform=server_osx&os=OS_X_10_13_6'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  app 'Dashlane.app'
end
