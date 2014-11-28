cask :v1 => 'optimal-layout' do
  version :latest
  sha256 :no_check

  url 'http://files.windowflow.com/OptimalLayout2.zip'
  appcast 'http://most-advantageous.com/sparkle/OL-AppCast.cfm'
  homepage 'http://most-advantageous.com/optimal-layout/'
  license :unknown

  app 'Optimal Layout.app'
end
