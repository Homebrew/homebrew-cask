cask :v1 => 'peakhour' do
  version '3.1.1'
  sha256 'fc26e821ba7bdb54103ba85cbc757b991ead197a67defd515d9de0c6b25e4530'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  name 'PeakHour 3'
  homepage 'http://www.peakhourapp.com'
  license :closed

  app 'PeakHour 3.app'
end
