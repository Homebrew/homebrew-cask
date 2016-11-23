cask 'downie' do
  version '2.5.9,1339'
  sha256 '0d3b4e023a71ed72913b170acfc58deff95317cbb96fae0409ea1e7b836060c4'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '7c1dc04de430a72a1da7eee9281b2a0472edd605973dace2d918889e4a2e0502'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
