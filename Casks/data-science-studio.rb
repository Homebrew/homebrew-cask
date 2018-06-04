cask 'data-science-studio' do
  version '4.3.0'
  sha256 '0a8cd23465e2ff08b4f023439ebfe8da15d3776b41383ad8b07c5ec3c3c5f154'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
