cask "quakespasm" do
  version "0.94.7"
  sha256 "2bfbc3bcc6f1e73afcd5503bfa50abec2abf280d29d637d0b4e9688b357e7e9c"

  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx-SDL2.zip",
      verified: "downloads.sourceforge.net/quakespasm/"
  name "QuakeSpasm"
  desc "Engine for iD software's Quake"
  homepage "https://quakespasm.sourceforge.io/"

  suite "QuakeSpasm"

  preflight do
    # There is no sub-folder; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("QuakeSpasm").tap(&:mkpath))
  end

  caveats <<~EOS
    To complete the installation of #{token}, you will have to copy the file 'pak0.pak' and
    'pak1.pak' from your Quake 1 installation support directory into #{appdir}/QuakeSpasm/id1/
  EOS
end
