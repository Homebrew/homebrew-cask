class Ngrok < Cask
  url 'https://dl.ngrok.com/darwin_amd64/ngrok.zip'
  homepage 'https://ngrok.com/'
  version 'latest'
  sha256 :no_check
  binary 'ngrok'
end
