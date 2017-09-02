cask 'root' do
  if MacOS.version <= :mountain_lion
    version '6.04.06'
    sha256 :no_check
    url "https://root.cern.ch/download/root_v#{version}.macosx64-10.8-clang51.dmg"
    pkg "root_v#{version}.macosx64-10.8-clang51.dmg"
  elsif MacOS.version <= :mavericks
    version '6.06.08'
    sha256 :no_check
    url "https://root.cern.ch/download/root_v#{version}.macosx64-10.9-clang60.dmg"
    pkg "root_v#{version}.macosx64-10.9-clang60.dmg"
  elsif MacOS.version <= :yosemite
    version '6.10.02'
    sha256 :no_check
    url "https://root.cern.ch/download/root_v#{version}.macosx64-10.10-clang70.dmg"
    pkg "root_v#{version}.macosx64-10.10-clang70.mpkg"
  elsif MacOS.version <= :el_capitan
    version '6.10.02'
    sha256 :no_check
    url "https://root.cern.ch/download/root_v#{version}.macosx64-10.11-clang80.dmg"
    pkg "root_v#{version}.macosx64-10.11-clang80.mpkg"
  else
    version '6.10.02'
    sha256 '60054486a29177453df239b2a7815dd3acbb2eb7ada61d5114b6ac91663212ba'
    url "https://root.cern.ch/download/root_v#{version}.macosx64-10.12-clang81.dmg"
    pkg "root_v#{version}.macosx64-10.12-clang81.mpkg"
  end
  name 'ROOT'
  homepage 'https://root.cern.ch/'

  depends_on macos: [:yosemite, :el_capitan, :sierra]

  uninstall pkgutil: 'com.HEPSoft.ROOT.*'

  caveats <<-EOS.undent
    To set the needed environment variables, PATH and LD_LIBRARY_PATH, use
    the following convenience script. For the sh shell family do:
      . <pathname>/root/bin/thisroot.sh
    and for the csh shell family do:
      source <pathname>/root/bin/thisroot.csh
    where <pathname> is the location where you unpacked the ROOT distribution.
    Typically add these lines to your .profile or .login files.
  EOS
end
