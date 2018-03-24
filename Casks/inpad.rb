cask 'inpad' do
  version '0.1.0'
  sha256 'a66a0be66bc98d31f36232ab9b5ea5a47fdb644e4234673d8ccc26bd637841f1'

  url "https://github.com/BoostIO/Boost/releases/download/v#{version}/Inpad-#{version}.dmg"
  appcast 'https://github.com/BoostIO/Boost/releases.atom',
          checkpoint: 'cc8f63649c914eb792a14de4666f0671c869aa265de95496470157b19cd09299'
  name 'Inpad'
  homepage 'https://github.com/BoostIO/Boost'

  app 'Inpad.app'
end
