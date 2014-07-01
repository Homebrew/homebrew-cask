class PayeTools < Cask
  url 'https://www.gov.uk/government/uploads/uploaded/hmrc/payetools-rti-14.0.14098.109-osx.zip'
  homepage 'http://www.hmrc.gov.uk/payerti/payroll/bpt/paye-tools.htm'
  version '14.0.14098.109'
  sha256 'b31a99d9b968bb1810819ede9eabe871e555dcb5fddaf20f4e3faa6856248040'
  caveats do
    manual_installer 'payetools-rti-14.0.14098.109-osx.app'
  end
end
