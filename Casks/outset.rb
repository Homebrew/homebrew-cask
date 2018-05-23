cask 'outset' do
  version '2.0.6'
  sha256 'bfc3921e91fab1b9ff915c2935162b930ab0035a1336932e085f46bcf95bb752'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: '8ed3c6fc6d15646c0559d5aba558f65a3d3032a37d183e03ffd16b95b2ea7999'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall launchctl: [
                         'com.github.outset.boot',
                         'com.github.outset.cleanup',
                         'com.github.outset.login',
                         'com.github.outset.login-privileged',
                         'com.github.outset.on-demand',
                       ],
            pkgutil:   'com.github.outset'

  caveats do
    files_in_usr_local
  end
end
