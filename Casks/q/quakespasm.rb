cask "quakespasm" do
  version "0.96.1"
  sha256 "e1e00e67735a1497f63a7eec8ee4e5e86e3e2dddc6aa6bd620d0633cbd18550c"

  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx-SDL2.zip"
  name "QuakeSpasm"
  desc "Engine for iD software's Quake"
  homepage "https://quakespasm.sourceforge.net/"

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
