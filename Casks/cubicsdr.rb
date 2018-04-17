cask 'cubicsdr' do
  version '0.2.3'
  sha256 'de13d61843b81571710c9065e132ab7869fa01e711d947f0464428ba160ab9cd'

  # github.com/cjcliffe/CubicSDR was verified as official when first introduced to the cask
  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg"
  appcast 'https://github.com/cjcliffe/CubicSDR/releases.atom',
          checkpoint: '132db1cd1120d8fe64bba01cc863c1f04e4bbf9646b54398bf6c40016cfcb167'
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'

  app 'CubicSDR.app'
end
