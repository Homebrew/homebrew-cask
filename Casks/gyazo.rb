cask :v1 => 'gyazo' do
  version '2.1'
  sha256 '88491cc2a9d481fdb99b822ca49560427ed11578b304203c4504d83fc2562061'

  url "https://files.gyazo.com/setup/Gyazo_#{version}.dmg"
  homepage 'https://gyazo.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Gyazo.app'
  app 'Gyazo GIF.app'
end
