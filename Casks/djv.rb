cask :v1 => 'djv' do
  version '1.0.4'
  sha256 '9607814fe120eecd875ed73eb05f97df2b0869b5412b23bbc0f7c4ea6b86d200'

  url "http://downloads.sourceforge.net/project/djv/djv-stable/#{version}/djv-#{version}-OSX-64.dmg"
  homepage 'http://djv.sourceforge.net'
  license :oss

  app "djv-#{version}-OSX-64.app"
end
