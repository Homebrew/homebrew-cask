cask :v1 => 'simple-css' do
  version :latest
  sha256 :no_check

  url 'http://www.hostm.com/downloads/simplecss/mac/SimpleCSS.zip'
  name 'Simple CSS'
  homepage 'http://www.hostm.com/css'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simple CSS.app'
end
