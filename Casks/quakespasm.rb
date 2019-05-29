cask 'quakespasm' do
  version '0.93.1'
  sha256 '7cbeba17619779717b76bb366a938d96f094c4eabd9fef008c61dd3c2e806c9a'

  # downloads.sourceforge.net/quakespasm was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/quakespasm/rss?path=/Mac'
  name 'QuakeSpasm'
  homepage 'https://quakespasm.sourceforge.io/'

  suite 'QuakeSpasm'

  preflight do
    # There is no sub-folder; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('QuakeSpasm').tap(&:mkpath))
  end

  caveats <<~EOS
    To complete the installation of #{token}, you will have to copy the file 'pak0.pak' and 'pak1.pak'
    from your Quake 1 installation support directory into #{appdir}/QuakeSpasm/id1/
  EOS
end
