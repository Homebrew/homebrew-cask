cask :v1 => 'simple-css' do
  version :latest
  sha256 :no_check

  url 'http://www.hostm.com/downloads/simplecss/mac/SimpleCSS.zip'
  homepage 'http://www.hostm.com/css'
  license :unknown    # todo: improve this machine-generated value

  app 'Simple CSS.app'
end
