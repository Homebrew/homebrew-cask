cask 'notedup' do
  version '2014031401'
  sha256 '827eb67e58fa6e529bb54c934d7cd21f46c6ba1e8efaedeeb996cae9f333c973'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ppyyf/notedup-bin/blob/master/#{version}/NoteDup_Mac_#{version}.zip?raw=true"
  name 'NoteDup'
  homepage 'https://appcenter.yinxiang.com/app/notedup/mac/'
  license :closed

  app 'NoteDup.app'
end
