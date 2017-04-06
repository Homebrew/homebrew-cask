cask 'inklet' do
  version '2.0.2'
  sha256 'd93711f48f7b1be4a0de325e91b7419ac493de89f1aa20c644814ad4bd881b0f'

  url "https://tenonedesign.com/apps/inklet/Inklet-#{version}.zip"
  appcast 'https://tenonedesign.com/apps/inklet/profileInfo2.php',
          checkpoint: 'ecce46a697e8866e96668802e64be7360885e323fe1c2e9f5e9260279c14e042'
  name 'Inklet'
  homepage 'https://tenonedesign.com/inklet.php'

  app 'Inklet.app'
end
