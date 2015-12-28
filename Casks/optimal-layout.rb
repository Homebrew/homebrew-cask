cask 'optimal-layout' do
  version :latest
  sha256 :no_check

  # windowflow.com is the official download host per the vendor homepage
  url 'http://files.windowflow.com/OptimalLayout2.zip'
  appcast 'http://most-advantageous.com/sparkle/OL-AppCast.cfm',
          :sha256 => '299604ad9c468c69f309804307c11916da0971815531818135f676146e5ea95a'
  name 'Optimal Layout'
  homepage 'http://most-advantageous.com/optimal-layout/'
  license :commercial

  app 'Optimal Layout.app'
end
