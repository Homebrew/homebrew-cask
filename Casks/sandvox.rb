cask :v1 => 'sandvox' do
  version :latest
  sha256 :no_check

  url 'http://www.karelia.com/files/8/Sandvox.dmg'
  name 'Sandvox'
  appcast 'http://launch.karelia.com/appcast.php',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://www.karelia.com/products/sandvox/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sandvox.app'
end
