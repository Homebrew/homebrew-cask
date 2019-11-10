cask 'checkra1n' do
  version '0.9'
  sha256 '4d63520f02d29eb91046ce0bb0a5849ed5599fc4684038954e18bc9d622febdb'

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  name 'checkra1n'
  homepage 'https://checkra.in/'

  app 'checkra1n.app'
end