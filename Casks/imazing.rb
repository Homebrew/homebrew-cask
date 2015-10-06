cask :v1 => 'imazing' do
  version '1.3-1442949224'
  sha256 '33365fae77122cf6a665da2240092ce1b4abfa8f69a34ba7461fa62372350674'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.sub(%r{-.*},'')}/#{version.sub(%r{.*?-},'')}/iMazingforMac-#{version.sub(%r{-.*},'')}.dmg"
  name 'iMazing'
  appcast 'http://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          :sha256 => 'f2d90c89ec502d3e6b0bda42291f94a96f9ef53639d8de26820db2b93b6eacfe'
  homepage 'https://imazing.com/'
  license :commercial

  app 'iMazing.app'

  depends_on :macos => '>= :lion'
end
