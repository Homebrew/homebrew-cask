cask 'pifinder' do
  version '3.0.0'
  sha256 'b6aab9b73d50dd0652af5ecc9cc841bc050f4d7a457b9a11ec623d0c09a338d6'

  # github.com/adafruit/Adafruit-Pi-Finder was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  url "https://github.com/adafruit/Adafruit-Pi-Finder/releases/download/#{version}/PiFinder-#{version}-osx-x64.zip"
  name 'PiFinder'
  homepage 'https://github.com/adafruit/Adafruit-Pi-Finder'
  license :gratis

  app 'PiFinder.app'
end
