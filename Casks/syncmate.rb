cask 'syncmate' do
  version '6.3.294'
  sha256 '2fe3c18a3cf60c880dfbb9a4cf99318177134b3b113f081072ca37e450cc3048'

  url 'http://www.sync-mac.com/download/syncmate.dmg'
  appcast 'http://www.eltima.com/download/syncmate-update/syncmate6.xml',
          checkpoint: 'b5b107fc9a6a1e1d35f105ec2a451cb339e3e5834c1cece8acb46185e4e87e6c'
  name 'SyncMate'
  homepage 'http://www.sync-mac.com'
  license :commercial

  app 'SyncMate.app'
end
