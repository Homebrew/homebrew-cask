cask :v1 => 'scilab' do
  version '5.5.1'
  sha256 '0e28ddd7dbf9f812bf13be12e3217d4c9e346a48e946b613a731a1c0ed9e0a4a'

  url "http://www.scilab.org/download/#{version}/scilab-#{version}-x86_64_yosemite.dmg"
  homepage 'https://www.scilab.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "scilab-#{version}.app"
end
