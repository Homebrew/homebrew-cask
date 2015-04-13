cask :v1 => 'fugu' do
  version '1.2.1pre1'
  sha256 '3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  name 'Fugu'
  homepage 'http://rsug.itd.umich.edu/software/fugu/'
  license :bsd

  app 'Fugu.app'
end
