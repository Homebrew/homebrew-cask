cask :v1 => 'powermate' do
  version '1.2.4_0'
  sha256 '6fd755961bb5a486cb3ab9d47217f7877d4bb021134f32a3c32ceede3fd3cf3d'

  url "http://support.griffintechnology.com/sites/default/files/PowerMate_v#{version}.zip"
  name 'Griffin Powermate'
  homepage 'http://support.griffintechnology.com/support/powermate/'
  license :gratis
  tags :vendor => 'Griffin'

  app 'PowerMate.app'
end
