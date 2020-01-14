cask 'fetch' do
  version '5.8'
  sha256 '88b102ff11c8dd0f932cbc8b1586be3c32a8f171030b6329ebdf7538c3ccf49e'

  url "https://fetchsoftworks.com/fetch/download/Fetch_#{version}.zip"
  appcast "https://updates.fetchsoftworks.com/list/fetch-#{version.major}K0-release.xml"
  name 'Fetch'
  homepage 'https://fetchsoftworks.com/fetch/'

  app 'Fetch.app'
end
