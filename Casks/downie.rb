cask 'downie' do
  version '2.5.5,1326'
  sha256 'e4737db42cbc55c20476aed5c563e739fc65707dd24d90b79c7383905bc462da'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '32f1c5e377442f3525b8466eab5f62272f291bc87291dc05fa02a3061e8ae3f0'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
