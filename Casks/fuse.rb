cask :v1 => 'fuse' do
  version '0.9.3.5207'
  sha256 '3a3a408dfe646b9d1bff466dafe2b31116f1295d092c5ffe6522603d06334bc7'

  url "https://api.fusetools.com/fuse-release-management/releases/#{version}/osx"
  name 'fuse'
  homepage 'https://www.fusetools.com'
  license :closed

  preflight do
    system '/bin/mv', '--', staged_path.join('osx'), staged_path.join('fuse.pkg')
  end

  container :type => :pkg
  pkg 'fuse.pkg'

  uninstall :pkgutil => 'com.fusetools.fuse'
end
