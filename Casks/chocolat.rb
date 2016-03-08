cask 'chocolat' do
  version '3.2.4'
  sha256 'b94a609eeed0b2081c5e0246efc73be089a438bab7370582a21e2339ce3ddf34'

  url "https://chocolatapp.com/versions/Chocolat_#{version}.zip"
  appcast 'https://chocolatapp.com/userspace/appcast/appcast_alpha.php',
          checkpoint: 'f06f43547773b6aba6aa5a973f9f4c927a3653b04710c4c37a887c85629eea74'
  name 'Chocolat'
  homepage 'https://chocolatapp.com/'
  license :commercial

  app 'Chocolat.app'
end
