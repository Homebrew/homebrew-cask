cask 'peakhour' do
  version '3.1.1'
  sha256 'fc26e821ba7bdb54103ba85cbc757b991ead197a67defd515d9de0c6b25e4530'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '88b887c39a0dce8dcf90cd7e65aeddabd239709f2dda1873276e0900134f6840'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com'
  license :commercial

  app "PeakHour #{version.to_i}.app"
end
