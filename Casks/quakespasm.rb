cask "quakespasm" do
  version "0.95.1"
  sha256 "c3873d59a5768496fbdfca4b27e37c9f9ac09764f8809997189c374cfd00354f"

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
