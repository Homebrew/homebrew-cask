cask :v1 => 'srclib' do
  version :latest
  sha256 :no_check

  # equinox.io is the official download host per the vendor homepage
  url 'https://api.equinox.io/1/Applications/ap_BQxVz1iWMxmjQnbVGd85V58qz6/Updates/Asset/src.zip?os=darwin&arch=amd64&channel=stable'
  homepage 'https://srclib.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  binary 'src'
end
