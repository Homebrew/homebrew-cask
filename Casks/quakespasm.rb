cask "quakespasm" do
  version "0.93.2"
  sha256 "e7d0d2d970a899ad3f54943f1d16e2cc210f29347c5d669dbd8988ea4531f797"

  # downloads.sourceforge.net/quakespasm/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/quakespasm/Mac/QuakeSpasm-#{version}-osx.zip"
  appcast "https://sourceforge.net/projects/quakespasm/rss?path=/Mac"
  name "QuakeSpasm"
  homepage "https://quakespasm.sourceforge.io/"

  suite "QuakeSpasm"

  preflight do
    # There is no sub-folder; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("QuakeSpasm").tap(&:mkpath))
  end

  caveats <<~EOS
    To complete the installation of #{token}, you will have to copy the file 'pak0.pak' and 'pak1.pak'
    from your Quake 1 installation support directory into #{appdir}/QuakeSpasm/id1/
  EOS
end
