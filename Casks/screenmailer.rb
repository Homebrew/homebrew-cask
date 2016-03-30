cask 'screenmailer' do
  version '2.0.4'
  sha256 'ceb6a29dfc154292347b2fd76e45e310e39803882b8f964f1323b86b2816a53e'

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml',
          checkpoint: '072f2675a4e36c0c6f4f4ae82457ad8e7548e695cf8daee00211de79b726f17a'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :commercial

  app 'Screenmailer.app'
end
