cask 'peakhour' do
  version '3.1.8'
  sha256 'c43fad5d78f915705bb29e7379090c0eee1b5190b1be412be20afdb1ab7659b0'

  url "https://updates.peakhourapp.com/releases/PeakHour%20#{version}.zip"
  appcast 'https://updates.peakhourapp.com/PeakHourAppcast.xml',
          checkpoint: '9448a1d6045cec40d42aa6a271ecdaa7f318f90a6f0d110ccdef5461d9db2eac'
  name 'PeakHour'
  homepage 'https://www.peakhourapp.com/'

  app "PeakHour #{version.major}.app"
end
