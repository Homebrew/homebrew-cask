cask :v1 => 'paye-tools' do
  version '15.0.15048.300'
  sha256 '11199be757ef71fa123c13bb69685d234a814958713d27a475616c6e587de2ee'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'https://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
            :args => [ '--mode', 'unattended' ]

  uninstall :quit => 'uk.gov.hmrc.bptrti'
end
