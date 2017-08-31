cask 'downie' do
  version '2.9.10,1524'
  sha256 '52db6b431777b2f0374f62ab507e8b64b74a83fbb74d4297d613d403826ad904'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: 'e7bc1bfdec2745883bb2c8d6b178bdda729e5f2a56dd66de30e6d19a55ca14e3'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
