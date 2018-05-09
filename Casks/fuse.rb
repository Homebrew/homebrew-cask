cask 'fuse' do
  version '1.8.1.15610'
  sha256 '448fd88fef4dde6b258db3304dcbf8416237fd35ee928d48c4a0bc9d40d0556a'

  url "https://www.fusetools.com/downloads/#{version}/osx"
  name 'Fuse Fusetools'
  homepage 'https://www.fusetools.com/'

  depends_on macos: '>= :mavericks'
  container type: :pkg

  pkg 'fuse.pkg'

  # This is a horrible hack to force the file extension.
  # The backend code should be fixed so that this is not needed.
  preflight do
    system_command '/bin/mv', args: ['--', staged_path.join('osx'), staged_path.join('fuse.pkg')]
  end

  uninstall pkgutil: 'com.fusetools.fuse'
end
