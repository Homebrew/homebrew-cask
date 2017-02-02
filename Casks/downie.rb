cask 'downie' do
  version '2.6.6,1383'
  sha256 '1a3cf6f702707c092f3aeb224a248ef366553118f7c5298e30880734c8e310ab'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'a6ab19fc26c362ea2c326bf6e87f1c5e7f4cdf819dd1df2dd621b769e07c2b41'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
