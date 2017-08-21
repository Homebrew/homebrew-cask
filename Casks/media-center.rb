cask 'media-center' do
  version '23.00.20'
  sha256 '70042295e59a0114900ca475cb2ab46d8c8793c58dbb429542ce4129614e5f25'

  url "http://files.jriver.com/mediacenter/channels/v#{version.major}/stable/MediaCenter#{version.no_dots}.dmg"
  name 'JRiver Media Center'
  homepage 'https://www.jriver.com/'

  app "Media Center #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/J River/',
               '~/Documents/JRiver/',
             ]
end
