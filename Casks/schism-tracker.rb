cask 'schism-tracker' do
  version '20190805'
  sha256 'e33fa9be548245e300c1e1b2da3e42eb10834462bc58abae1a3edc16333fe92c'

  url "https://github.com/schismtracker/schismtracker/releases/download/#{version}/schismtracker-#{version}-osx.tar.gz"
  appcast 'https://github.com/schismtracker/schismtracker/releases.atom'
  name 'Schism Tracker'
  homepage 'https://github.com/schismtracker/schismtracker'

  app 'schismtracker/Schism Tracker.app'
end
