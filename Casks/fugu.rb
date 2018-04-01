cask 'fugu' do
  version '1.2.1pre1'
  sha256 '3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328'

  # sourceforge.net/fugussh was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fugussh/rss',
          checkpoint: 'c5b02d17828becdf1251df52a154e7b6e8b14b3fd67b559f0ea15bd1b4c887a3'
  name 'Fugu'
  homepage 'http://rsug.itd.umich.edu/software/fugu/'

  app 'Fugu.app'
end
