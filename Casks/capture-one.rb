cask 'capture-one' do
  version '11.2.1'
  sha256 '57277e5f4f82ccce6b4140777c6c7b44a5b9069b3b867a13d1e5f318730914bb'

  url "http://downloads.phaseone.com/73bc2bdb-c7e0-45ec-bffc-3b2ec2adeb03/International/CaptureOne.Mac.#{version}.dmg"
  name 'Capture One'
  homepage 'https://www.phaseone.com/en/Products/Software/Capture-One-Pro/Whats-new.aspx'

  app "Capture One #{version.major}.app"
end
