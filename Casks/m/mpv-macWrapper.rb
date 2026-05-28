cask "mpv-macWrapper" do
  version "1.0.0"
  sha256 "3ccb716615bd5e2f90093835569be85f3ff31dc76abf255c9206cf2734846398"

  url "https://github.com/IstPlayer/mpv-macWrapper/releases/download/v#{version}/mpv.dmg"
  name "mpv-macWrapper"
  desc "Wrap mpv CLI as a native macOS .app bundle"
  homepage "https://github.com/IstPlayer/mpv-macWrapper"

  depends_on macos: ">= :monterey"

  app "mpv.app"

  caveats <<~EOS
    mpv must be installed separately:
      brew install mpv

    If mpv is not found at the default paths, the app will
    prompt you to locate it on first launch.  The chosen path
    is saved to ~/.config/mpv-macWrapper/path.conf so you only
    need to do this once.

    This cask provides an Apple Silicon (arm64) binary only.
  EOS
end
