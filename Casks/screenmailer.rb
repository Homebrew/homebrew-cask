cask 'screenmailer' do
  version :latest
  sha256 :no_check

  url 'https://www.screenmailer.com/releases/current/Screenmailer.zip'
  appcast 'https://www.screenmailer.com/releases/current/releases.xml',
          :sha256 => '072f2675a4e36c0c6f4f4ae82457ad8e7548e695cf8daee00211de79b726f17a'
  name 'Screenmailer'
  homepage 'https://www.screenmailer.com/'
  license :commercial

  app 'Screenmailer.app'
end
