cask :v1 => 'nomacs' do
  version '2.4.5'
  sha256 '90da9d3d77a659c6ad14ebfb8f19f795f59a7ded5e2262ec610786b4b182106f'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/nomacs/nomacs-#{version}-x86.zip"
  name 'nomacs'
  homepage 'https://www.nomacs.org/'
  license :gpl

  app 'nomacs.app'
end
