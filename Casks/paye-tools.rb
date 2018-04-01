cask 'paye-tools' do
  version '17.2.17125.433'
  sha256 'e8d2f9d27d873c120cd11343753fc23a917b27d8ddfbf32f65590409019f20b8'

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
