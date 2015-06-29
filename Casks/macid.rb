cask :v1 => 'macid' do
  version '1.2.2'
  sha256 '6dd7ad1992355be510df33ee6c0209690c6d3522a93afa9d6750b999b36c67be'

  url "https://macid.co/app/#{version}/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'https://macid.co/'
  license :gratis

  app 'MacID.app'

  postflight do
    suppress_move_to_applications
  end

  depends_on :macos => '>= :yosemite'

  zap :delete => '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
