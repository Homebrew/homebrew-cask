cask 'bmux' do
  version ':latest'
  sha256 '971ad14ddb59e2b3a40c431f83aa7ae45c4125313351209e49facd3664e36bcf'

  url 'https://github.com/shashank2000/bmux/releases/download/v1.0-alpha/bmux.zip'
  appcast 'https://github.com/shashank2000/bmux/releases.atom'
  name 'BMUX'
  homepage 'https://github.com/shashank2000/bmux'

  app 'bmux.app'
end
