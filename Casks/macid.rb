cask 'macid' do
  version '1.3.4'
  sha256 'c37ee8b3585031e8480d3ed0e14e0e6f24eaadd0467c7110f465288069646fb7'

  url "https://macid.co/app/#{version}/MacID%20for%20OS%20X.zip"
  name 'MacID'
  homepage 'https://macid.co/'
  license :gratis

  depends_on macos: '>= :yosemite'

  app 'MacID.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.kanecheshire.MacIDOSX.plist'
end
