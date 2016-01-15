cask 'sage' do
  if MacOS.release <= :mavericks
    version '6.9'
    sha256 '21f460c90db2a9ee83d196937587de5daab8c6712b0f24366b6a1c15a8dd592b'
    # mit.edu is an official download host per the vendor download page
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-x86_64-Darwin-OSX-10.7-app.dmg"
  elsif MacOS.release <= :yosemite
    version '6.9'
    sha256 '03112bf747cf807f308d518f34c1982ca3c9599e65bf64a6782efc78136198a4'
    # mit.edu is an official download host per the vendor download page
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-x86_64-Darwin-OSX_10.10_x86_64-app.dmg"
  else
    version '6.10'
    sha256 '00092f6450267a46f94bfd69f148e71e05d5e4edbac234101afa63f40db45d1b'
    # mit.edu is an official download host per the vendor download page
    url "http://mirrors.mit.edu/sage/osx/intel/sage-#{version}-OSX_10.11.2-x86_64.app.dmg"
  end

  name 'Sage'
  homepage 'http://www.sagemath.org/'
  license :gpl

  depends_on :macos => '>= :lion'
  depends_on :arch => :x86_64

  if MacOS.release <= :yosemite
    app "Sage-#{version}.app"
    binary "Sage-#{version}.app/Contents/Resources/sage/sage"
  else
    app "SageMath-#{version}.app"
    binary "SageMath-#{version}.app/Contents/Resources/sage/sage"
  end

  zap :delete => [
                   '~/.sage',
                   '~/Library/Logs/sage.log',
                 ]

  caveats do
    files_in_usr_local
  end
end
