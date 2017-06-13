cask 'downie' do
  version '2.8.9,1479'
  sha256 '0666d2791634dcb90e1b8b07eb76f5af6e79da59e0fe32be6e8bd55f101710e1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '74281b09b6cf49099fe90b70bad3536cb7042723e082b0178e55ef0a667e76cd'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
