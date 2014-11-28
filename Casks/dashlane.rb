cask :v1 => 'dashlane' do
  version '2.4.1.62949'
  sha256 '97bca51c71ba32e5fa13160a77b9a12824e2e44990958d9831263936ed3f1f40'

  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/2.4.1/#{version}/Dashlane.dmg"
  homepage 'https://www.dashlane.com/'
  license :unknown

  app 'Dashlane.app'
end
