cask 'optimal-layout' do
  version :latest
  sha256 :no_check

  # windowflow.com is the official download host per the vendor homepage
  url 'http://files.windowflow.com/OptimalLayout2.zip'
  appcast 'http://most-advantageous.com/sparkle/OL-AppCast.cfm',
          :sha256 => '5b1bc318498566ba0badf64b102888f5ceddc5b5aa6ff9320ea7f0b150505254'
  name 'Optimal Layout'
  homepage 'http://most-advantageous.com/optimal-layout/'
  license :commercial

  app 'Optimal Layout.app'
end
