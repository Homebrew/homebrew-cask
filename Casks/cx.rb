cask :v1 => 'cx' do
  version '1.0.3.6'
  sha256 'b78a6af89942e34d77638d98b86a321928c1eaa1d44604dabba4aa9e02366b12'

  url "http://www.cx.com/install/desktop/versions/cx-#{version.gsub('.','-')}.zip"
  name 'CX'
  homepage 'http://www.cx.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CX.app'
end
