cask :v1 => 'paye-tools' do
  version '15.1.15162.94'
  sha256 '45ff2d53221ca7b0948faf58a0e0bc78a939107a0ba8b602f5c8f56139e6b9f7'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'https://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
            :args => [ '--mode', 'unattended' ]

  uninstall :quit => 'uk.gov.hmrc.bptrti'
end
