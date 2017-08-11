cask 'downie' do
  version '2.9.8,1517'
  sha256 'e354ffb5d7f8cbb14f77d2d3a204e0cce50ef44d98a6a15fae89faa23017bbc9'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: 'da89aa2c34d5bef33e4cfefe7027dd91cc0e215304346da1924b8e656782502f'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
