class Ngrok < Cask
  url 'https://dl.ngrok.com/darwin_amd64/ngrok.zip'
  homepage 'https://ngrok.com/'
  version 'latest'
  no_checksum
  binary 'ngrok'
end
