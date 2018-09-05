cask 'igetter' do
  version '2.9.6'
  sha256 '31acb5393debc5fbb26a8d7a8ff1acf64144422ec127393dbc1a7329d9669a14'

  url "https://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  name 'iGetter'
  homepage 'https://www.igetter.net/index.html'

  app "iGetter #{version}/iGetter.app"
end
