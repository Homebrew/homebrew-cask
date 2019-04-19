cask 'paye-tools' do
  version '19.0.19063.1355'
  sha256 '3cbe66d6e7c60c5177314d473dfe08d7b329f3f2d70c644e4dbf3c2ea2bad2ed'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'https://www.gov.uk/basic-paye-tools'

  installer script: {
                      executable: "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall quit:   'uk.gov.hmrc.bptrti',
            delete: '/Applications/HMRC'
end
