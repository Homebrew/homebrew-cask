cask 'downie' do
  version '2.6.5,1379'
  sha256 '4b4c7ad3793338f6c4d6b45d25c1f15f98e15ccabbf2a1be0fb657b4b7bed9d1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: 'b41b2600773d0eef3bcc8c3785a545011dbe086093fa2be016fca36362d79572'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
