cask 'downie' do
  version '3.1693'
  sha256 '419dc42e48ad6aa8adc7efa5cbb72e18cd21da6719ba7f8df2625628642b644c'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.dots_to_underscores}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_3.xml',
          checkpoint: '0e8c6ea3c0c3b48c91b1b278efc235619b2939269da719dfd5a5add9d8e7f28a'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :el_capitan'

  app "Downie #{version.major}.app"
end
