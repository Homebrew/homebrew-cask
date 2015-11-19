cask :v1 => 'peakhour' do
  version '3.1.1'
  sha256 'fc26e821ba7bdb54103ba85cbc757b991ead197a67defd515d9de0c6b25e4530'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          :sha256 => '26594bf49355f61236615666ab78f9c74d71c2dc20eec5cf35d5dc3a35d0e5c6'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
