cask 'capture-one' do
  version '11.3.1'
  sha256 'd13b8508ccf7dcf3bd9f94d738aa4e8118bb7e3fa84f295d89456fc74b085d60'

  url "http://downloads.phaseone.com/e7f45a0e-447c-4878-84fb-bca6db2de475/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
