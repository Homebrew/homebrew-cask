cask 'eddie' do
  version '2.12.4'
  sha256 '898abec0155bfe90f5b04c5c22dc20339cc21a59fc5083284550c430acd4b761'

  # eddie.website was verified as official when first introduced to the cask
  url "https://eddie.website/download/?platform=macos&arch=x64&ui=ui&format=disk.dmg&version=#{version}"
  name 'Air VPN'
  name 'Eddie'
  homepage 'https://airvpn.org/macosx/'

  app 'Eddie.app'

  uninstall quit: 'com.eddie.client'
end
