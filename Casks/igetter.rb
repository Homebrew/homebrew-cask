cask 'igetter' do
  version '2.9.5'
  sha256 '6e07dd6ba828b99a009bae254fe632897b492e489ae02da788728ec4b443ba2e'

  url "https://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  name 'iGetter'
  homepage 'https://www.igetter.net/index.html'

  app "iGetter #{version}/iGetter.app"
end
