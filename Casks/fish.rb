cask 'fish' do
  version '2.5.0'
  sha256 'cef62c9643e3303777db3c80e63caf505f43694bbff120506159684645755d51'

  url "https://fishshell.com/files/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html',
          checkpoint: 'ac58c33821f3ac78e1d1b7cdb2de9a8a5a71fc02b0e147bb0e6c4786d9313f03'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  app 'fish.app'
end
