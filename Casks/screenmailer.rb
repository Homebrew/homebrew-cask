cask 'screenmailer' do
  version '2.0.4'
  sha256 'ceb6a29dfc154292347b2fd76e45e310e39803882b8f964f1323b86b2816a53e'

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml',
          checkpoint: '1f02c1016166fcc44aaa99252d535126434d2fe55bd1541ccbab6c13f62c68f9'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :commercial

  app 'Screenmailer.app'
end
