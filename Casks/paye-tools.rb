cask :v1 => 'paye-tools' do
  version '14.1.14168.197'
  sha256 'f8a7d7a4c2c7304b08bf342af1c093795a8717058471fe3da5ee8e43b7604719'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  homepage 'http://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown

  installer :manual => "payetools-rti-#{version}-osx.app"
end
