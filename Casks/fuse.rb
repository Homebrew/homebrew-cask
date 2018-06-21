cask 'fuse' do
  version '1.9.0'
  sha256 '31e737086d546176f436a2792baca604487f529008a21c424610baec25146a20'

  # github.com/fuse-open/fuse-studio was verified as official when first introduced to the cask
  url "https://github.com/fuse-open/fuse-studio/releases/download/#{version}/fuse_osx_#{version.dots_to_underscores}.pkg"
  appcast 'https://github.com/fuse-open/fuse-studio/releases.atom'
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  depends_on macos: '>= :mavericks'
  container type: :pkg

  pkg "fuse_osx_#{version.dots_to_underscores}.pkg"

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('osx'), staged_path.join('fuse.pkg')]
  end

  uninstall pkgutil: 'com.fusetools.fuse'
end
