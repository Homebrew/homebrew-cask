cask 'purevpn' do
  version '1.99.8'
  sha256 'ff392636e0e2ae85221b9c30dcb437f5a3b1b0fd2cfff7151e79dd8ac030d02f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/dialer_downloads/PureVPN-v#{version}.dmg"
  name 'PureVPN'
  homepage 'https://www.purevpn.com/'
  license :gratis

  app 'PureVPN.app'
end
