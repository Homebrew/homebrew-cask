cask 'fuse' do
  version '0.9.5.5424'
  sha256 '9df279da161f3d8a89bcedacfc7aaeade7a9005784602177a82e7008a6592e57'

  url "https://api.fusetools.com/fuse-release-management/releases/#{version}/osx"
  name 'fuse'
  homepage 'https://www.fusetools.com'
  license :closed

  # This is a horrible hack to force the file extension.  The
  # backend code should be fixed so that this is not needed.
  preflight do
    system '/bin/mv', '--', staged_path.join('osx'), staged_path.join('fuse.pkg')
  end

  container :type => :pkg

  pkg 'fuse.pkg'

  uninstall :pkgutil => 'com.fusetools.fuse'
end
