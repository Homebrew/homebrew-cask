cask :v1 => 'paye-tools' do
  version '14.2.14330.88'
  sha256 '7a8a055930bdcf6969f9c8887c9d4dcb6b8a6eba399743383866bfa3458acee3'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'http://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
            :args => [ '--mode', 'unattended' ]

  uninstall :quit => 'uk.gov.hmrc.bptrti'
end
