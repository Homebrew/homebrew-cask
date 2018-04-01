cask 'inboard' do
  version '1.1.2-341'
  sha256 'eaf186666385222d2edc713b38007760fd02717d33b2fd187d2abcae5ff76d6f'

  url "https://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'https://inboardapp.com/appcast.xml',
          checkpoint: 'ceeeb50e46a7a6902136a5659a614140c854827f1abc76c23938053056efb563'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
