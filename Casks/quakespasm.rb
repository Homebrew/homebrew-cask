cask "quakespasm" do
  version "0.94.6"
  sha256 "8c7fb9c41ac44c1c12d75681842b7d74c16b5aeaeaffb651f420b851a935717a"

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
