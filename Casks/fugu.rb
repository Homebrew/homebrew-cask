cask 'fugu' do
  version '1.2.1pre1'
  sha256 '3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328'

  # sourceforge.net/fugussh was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  appcast 'https://sourceforge.net/projects/fugussh/rss',
          checkpoint: '160c21e81d72191ae8c2767e5261bf3f018f555344ddb3e0b4262a31bc7627c1'
  name 'Fugu'
  homepage 'http://rsug.itd.umich.edu/software/fugu/'

  app 'Fugu.app'
end
