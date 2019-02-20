cask 'paye-tools' do
  version '18.1.18115.285'
  sha256 '2612fce9135525e5b4e43b36e5d1dcd6c1390938996f192b8dd2c13ded043614'

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
