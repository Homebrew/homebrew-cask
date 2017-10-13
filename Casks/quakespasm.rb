cask 'quakespasm' do
  version '0.92.1'
  sha256 '8e4113faa6a1fb6d070c1da70e88b49746d11db3afc8fb5700e9cdbf9b2b71f4'

  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/quakespasm/rss?path=/Mac',
          checkpoint: '067a6d7b895d61e44ca3354f5d8876081f9be9225a9d3ee3d92df90dbcfed3bc'
  name 'QuakeSpasm'
  homepage 'http://quakespasm.sourceforge.net/'

  suite 'QuakeSpasm'

  preflight do
    # There is no sub-folder; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('QuakeSpasm').tap(&:mkpath))
  end

  caveats <<-EOS.undent
    To complete the installation of #{token}, you will have to copy the file 'pak0.pak' and 'pak1.pak'
    from your Quake 1 installation support directory into #{appdir}/QuakeSpasm/id1/
  EOS
end
