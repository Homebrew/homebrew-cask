class Latexian < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://tacosw.com/latexian/Latexian.zip'
  appcast 'http://tacosw.com/latexian/update2.php'
  homepage 'http://tacosw.com/latexian/'

  link 'Latexian/Latexian.app'
end
