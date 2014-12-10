cask :v1 => 'ngrok' do
  version :latest
  sha256 :no_check

  url 'https://dl.ngrok.com/darwin_amd64/ngrok.zip'
  homepage 'https://ngrok.com/'
  license :unknown    # todo: improve this machine-generated value

  binary 'ngrok'

  # todo verify that this does not contain user-created content
  # zap :delete => '~/.ngrok'
end
