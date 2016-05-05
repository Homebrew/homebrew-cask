cask 'paye-tools' do
  version '16.0.16076.450'
  sha256 'ae488dd53a7d6787fe17fbd8b699fc62ad1441f49a35c1a7baf3015e14a0e34f'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  name 'Basic PAYE Tools'
  homepage 'https://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer script: "payetools-rti-#{version}-osx.app/Contents/MacOS/osx-intel",
            args:   ['--mode', 'unattended']

  uninstall quit: 'uk.gov.hmrc.bptrti'
end
