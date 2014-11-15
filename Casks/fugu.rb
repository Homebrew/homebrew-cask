cask :v1 => 'fugu' do
  version '1.2.1pre1'
  sha256 '3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328'

  url "https://downloads.sourceforge.net/project/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  homepage 'http://rsug.itd.umich.edu/software/fugu/'
  license :oss

  app 'Fugu.app'
end
