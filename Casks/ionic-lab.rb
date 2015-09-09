cask :v1 => 'ionic-lab' do
  version :latest
  sha256 :no_check

  url "http://bit.ly/ionic-lab-mac"
  name 'IonicLab'
  homepage 'http://lab.ionic.io/'
  license :unknown

  app 'Ionic Lab.app'
end
