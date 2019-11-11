cask 'checkra1n' do
  version '0.9.1'
  sha256 'dec472b249315a44a7a8caed016eaff2802a8b8d969d2fd299602a3af75ce3a0'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  appcast 'https://checkra.in/'
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end
