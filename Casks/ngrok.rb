class Ngrok < Cask
  version 'latest'
  sha256 :no_check

  url 'https://dl.ngrok.com/darwin_amd64/ngrok.zip'
  homepage 'https://ngrok.com/'

  binary 'ngrok'
end
