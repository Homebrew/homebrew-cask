cask 'fcs-remover' do
  version '3.1.5.0'
  sha256 'c0d0526f3d7a9b48ae130cda6faed3f3393ea1c08a78850c9f71efa6e04b5e91'

  url "https://www.digitalrebellion.com/download/fcsremover?version=#{version.no_dots}"
  name 'FCS Remover'
  homepage 'https://www.digitalrebellion.com/fcsremover/'

  app 'FCS Remover.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.FCSRemover.plist'
end
