cask 'runway-ml' do
  version :latest
  sha256 :no_check

  url "https://api.runwayml.com/v1/download\?platform\=mac"
  name 'Runway'
  homepage 'https://runwayml.com/'

  app 'Runway.app'
end
