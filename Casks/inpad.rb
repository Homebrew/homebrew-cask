cask 'inpad' do
  version '0.1.0'
  sha256 'a66a0be66bc98d31f36232ab9b5ea5a47fdb644e4234673d8ccc26bd637841f1'

  # github.com/ManoCurry/Inpad was verified as official when first introduced to the cask
  url "https://github.com/ManoCurry/Inpad/releases/download/v#{version}/Inpad-#{version}.dmg"
  appcast 'https://github.com/ManoCurry/Inpad/releases.atom',
          checkpoint: '853830cd514b300be9c46ee2afdc1c522d942a86249a16e660b83e9f5836acaf'
  name 'Inpad'
  homepage 'https://manocurry.github.io/Inpad/'

  app 'Inpad.app'
end
