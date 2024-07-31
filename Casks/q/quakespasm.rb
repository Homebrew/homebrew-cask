cask "quakespasm" do
  version "0.96.3"
  sha256 "8d5114bf8a25563c7bcdf9315acee9538281479ff34fd9c1240a6c4e4fad7df0"

  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx-SDL2.zip"
  name "QuakeSpasm"
  desc "Engine for iD software's Quake"
  homepage "https://quakespasm.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/quakespasm/rss?path=/Mac"
  end

  suite "QuakeSpasm"

  preflight do
    # There is no sub-folder; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("QuakeSpasm").tap(&:mkpath))
  end

  caveats <<~EOS
    To complete the installation of #{token}, you will have to copy the files
    'pak0.pak' and 'pak1.pak' from your Quake 1 installation support directory
    into #{appdir}/QuakeSpasm/id1/
  EOS
end
