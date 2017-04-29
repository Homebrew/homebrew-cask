cask 'paye-tools' do
  version '17.0.17068.356'
  sha256 'dd568956b671e41c656835fb50e188de2932558cea79363c02407d9faf37cdc0'

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
