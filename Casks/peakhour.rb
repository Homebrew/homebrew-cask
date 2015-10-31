cask :v1 => 'peakhour' do
  version '3.1.1'
  sha256 'fc26e821ba7bdb54103ba85cbc757b991ead197a67defd515d9de0c6b25e4530'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
