cask "quakespasm" do
  version "0.96.2"
  sha256 "a8e9293a1cfb97a05ae8a2988373ce960de2872598ab8ba7bfb030f7234b9803"

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
