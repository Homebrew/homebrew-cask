cask :v1 => 'latexian' do
  version :latest
  sha256 :no_check

  url 'http://tacosw.com/latexian/Latexian.zip'
  appcast 'http://tacosw.com/latexian/update2.php'
  name 'Latexian'
  homepage 'http://tacosw.com/latexian/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Latexian/Latexian.app'
end
