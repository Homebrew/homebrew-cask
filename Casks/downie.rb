cask 'downie' do
  version '2.6.10,1396'
  sha256 '0603cd1237d7d6cc305b056bfa5b58c4bde29fa3c7dcc69142dc3bd40fc838d1'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.3.xml',
          checkpoint: '8789e9aa345e8b470cda971b6ae59b84a92ed35345d72e10389c97d6f35ded82'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
