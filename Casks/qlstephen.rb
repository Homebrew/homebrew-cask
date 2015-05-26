cask :v1 => 'qlstephen' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/whomwah/qlstephen/QLStephen.qlgenerator.zip'
  name 'QLStephen'
  homepage 'http://whomwah.github.io/qlstephen/'
  license :mit

  qlplugin 'QLStephen.qlgenerator'
end
