cask 'paye-tools' do
  version '16.1.16125.489'
  sha256 'a188f5b122a99bb4c944835c2b0bfb6da89e1e4405245212ccd4e8f34f79186d'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'https://www.gov.uk/basic-paye-tools'

  installer script: "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
            args:   ['--mode', 'unattended'],
            sudo:   true

  uninstall quit: 'uk.gov.hmrc.bptrti'
end
