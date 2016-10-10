cask 'perma' do
  version '1.0.0'
  sha256 '7987bacb6852d9874d899beefed84f0f2dcbbbb2893e481a607a623c994eb62a'

  # perma-dl.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://perma-dl.s3.amazonaws.com/Perma-v#{version}.zip"
  name 'Perma'
  homepage 'https://per.ma'

  app 'Perma.app'
end
