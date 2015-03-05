cask :v1 => 'angry-ip-scanner' do
  version '3.3.2'
  sha256 'ed8e23f58c3539380673c26d1ed265f703207cc2866f6c3e9e004859a0a559e5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  name 'Angry IP Scanner'
  homepage 'http://angryip.org'
  license :gpl

  app 'Angry IP Scanner.app'
end
