cask :v1 => 'noisy' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/jonshea/Noisy/Noisy.zip'
  homepage 'https://github.com/jonshea/Noisy'
  license :oss

  app 'Noisy.app'
end
