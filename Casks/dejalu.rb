cask 'dejalu' do
  version :latest
  sha256 :no_check

  url 'https://d.dejalu.me/beta/DejaLu.zip'
  name 'DejaLu'
  homepage 'https://dejalu.me'
  license :BSD 3-Clause License

  app 'DejaLu.app'
end
