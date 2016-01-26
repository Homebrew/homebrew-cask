cask 'fuse' do
  version '0.9.5.5424'
  sha256 '7689fc1c3c2ca4ad89fd68ee80c59a24c130d6cc2cd8651812c39321405149e3'

  url "https://api.fusetools.com/fuse-release-management/releases/#{version}/osx"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com'
  license :closed

  container type: :pkg

  pkg 'fuse.pkg'

  # This is a horrible hack to force the file extension.  The
  # backend code should be fixed so that this is not needed.
  preflight do
    system '/bin/mv', '--', staged_path.join('osx'), staged_path.join('fuse.pkg')
  end

  uninstall pkgutil: 'com.fusetools.fuse'
end
