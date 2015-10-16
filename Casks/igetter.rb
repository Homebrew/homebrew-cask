cask :v1 => 'igetter' do
  version '2.9.3'
  sha256 '52bf136958415abf4f6522fca6ee66e19bb35d5f7c523321fbd72add557fe7ae'

  url "http://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  name 'iGetter'
  homepage 'http://www.igetter.net/'
  license :commercial

  app "iGetter #{version}/iGetter.app"
end
