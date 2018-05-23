cask 'data-science-studio' do
  version '4.2.2'
  sha256 '29a1cf44498bddd4d6b26c0b672128fb471a5fe964eda46537a4468a0ecdcf59'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
