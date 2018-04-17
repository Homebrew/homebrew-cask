cask 'fcs-remover' do
  version '3.1.4.0'
  sha256 '794dc7bc37b64e28f5610c2fcbe159ad82d31e2842eeca6e18147edbf0dc5476'

  url "https://www.digitalrebellion.com/download/fcsremover?version=#{version.no_dots}"
  name 'FCS Remover'
  homepage 'https://www.digitalrebellion.com/fcsremover/'

  app 'FCS Remover.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.FCSRemover.plist'
end
