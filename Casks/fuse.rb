cask 'fuse' do
  version '3.10.2'
  sha256 'fb07b8027d0cf7509b92c6a99110b98d5b7584512128ab6331ed30308363614f'

  # github.com/osxfuse/osxfuse was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-3.10.2.dmg"
  appcast 'https://github.com/osxfuse/osxfuse/releases.atom'
  name 'FUSE for macOS'
  homepage 'https://osxfuse.github.io/'

  pkg 'FUSE for macOS.pkg'

  uninstall script: {
                      executable: "#{staged_path}/Extras/Uninstaller.app/Contents/Resources/Scripts/uninstall_osxfuse.sh",
                      sudo:       true,
                  }
end
