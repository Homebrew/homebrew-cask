cask 'igetter' do
  version '2.9.4'
  sha256 '9c564156b06583cd3f9de0f827cffa2e5f8cb59834926111d5dd9951a02409c5'

  url "https://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  name 'iGetter'
  homepage 'https://www.igetter.net/'

  app "iGetter #{version}/iGetter.app"
end
