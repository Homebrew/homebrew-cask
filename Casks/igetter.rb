cask :v1 => 'igetter' do
  version '2.9.2'
  sha256 '86fd84cbd16ad975e586498cad89a7784087a62e11ba969000a1d48a0b634461'

  url "http://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  homepage 'http://www.igetter.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "iGetter #{version}/iGetter.app"
end
