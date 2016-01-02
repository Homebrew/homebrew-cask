cask 'noisy' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/jonshea/Noisy/Noisy.zip'
  name 'Noisy'
  homepage 'https://github.com/jonshea/Noisy'
  license :bsd

  app 'Noisy.app'
end
