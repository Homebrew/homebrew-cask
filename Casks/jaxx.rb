cask 'jaxx' do
  version '1.2.13'
  sha256 'cf1d3ed46029fd6ae3b8e4d87bcdc703ba03ec2a9aaf004bee1e97233a8ec387'

  url "https://jaxx.io/files/#{version}/Jaxx-Installer-v#{version}.osx.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end
