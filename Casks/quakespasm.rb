cask 'quakespasm' do
  version '0.93.0'
  sha256 '4f071806ab0eae7a2321de760ae5ca4e041ce9bfc4dec99e17795e7a31513635'

  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/quakespasm/rss?path=/Mac',
          checkpoint: 'eb82827aa6f7c7c92527ad5519a710b4380a57cc475c2c55a39534762ce641ae'
  name 'QuakeSpasm'
  homepage 'http://quakespasm.sourceforge.net/'

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
