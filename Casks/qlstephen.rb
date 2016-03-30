cask 'qlstephen' do
  version :latest
  sha256 :no_check

  # github.com/downloads/whomwah/qlstephen was verified as official when first introduced to the cask
  url 'https://github.com/downloads/whomwah/qlstephen/QLStephen.qlgenerator.zip'
  name 'QLStephen'
  homepage 'https://whomwah.github.io/qlstephen/'
  license :mit

  qlplugin 'QLStephen.qlgenerator'
end
