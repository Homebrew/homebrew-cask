class PayeTools < Cask
  version '14.0.14098.109'
  sha256 'b31a99d9b968bb1810819ede9eabe871e555dcb5fddaf20f4e3faa6856248040'

  url "https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-#{version}-osx.zip"
  homepage 'http://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  license :unknown

  installer :manual => "payetools-rti-#{version}-osx.app"
end
