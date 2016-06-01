cask 'black-screen' do
  version '0.0.3'
  sha256 '74bc21242d05965aea6d94b21a575511eba0b6ea8a0745e3730ae42e6726b08a'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '6a0b2e58f2b63ec03177082756752c17bd7781aa278a8c981937f192002e0028'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
