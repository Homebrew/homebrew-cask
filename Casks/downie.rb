cask 'downie' do
  version '2.8,1458'
  sha256 'afaa29461264618999ddebc8a6c1da05ba30a33ffd043ba3b9aac3aa9dc4ff26'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'ecb6d89e50a9dd53c385f7d755ce41f008e75ee31fe08d60fe15d3ab92c939a8'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
