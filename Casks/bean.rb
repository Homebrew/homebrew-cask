cask 'bean' do
  if MacOS.version <= :el_capitan
    version '3.2.5'
    sha256 'd6e841108ad7e28e4a1b447b37ebe69e5895206b53d8aa37b126673fdd9e606d'
    url 'http://www.bean-osx.com/releases/Bean-Install.zip'
    app 'Bean-Install/Bean.app'
  elsif MacOS.version <= :sierra
    version '3.2.9'
    sha256 '85eefd8ac8da0ab6c3edc12407e317a488b1e7e498a1436c15348a1e9a47823e'
    url 'http://www.bean-osx.com/releases/Bean-Install-Sierra.zip'
    app 'Bean-Install-Sierra/Bean.app'
  else
    version '3.2.10'
    sha256 '3e05abeb6e66b91612985be3cebe102e92beb0df66165f34232a5f062927ebe5'
    url 'http://www.bean-osx.com/releases/Bean-Install-High-Sierra.zip'
    app 'Bean-Install-High-Sierra/Bean.app'
  end

  name 'Bean'
  homepage 'http://www.bean-osx.com/'
end
