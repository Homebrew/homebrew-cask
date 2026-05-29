cask "mpv-macwrapper" do
  version "1.0.0"

  on_arm do
    sha256 "3ccb716615bd5e2f90093835569be85f3ff31dc76abf255c9206cf2734846398"
  end

  url "https://github.com/IstPlayer/mpv-macWrapper/releases/download/v#{version}/mpv.dmg"
  name "mpv-macWrapper"
  desc "Wrap mpv CLI as a native macOS .app bundle"
  homepage "https://github.com/IstPlayer/mpv-macWrapper"

  depends_on macos: ">= :monterey"

  app "mpv.app"

  caveats <<~EOS
    Apple Silicon (arm64) only.  mpv must be installed separately:
      brew install mpv

    If mpv is not found at the default paths, the app will
    prompt you to locate it on first launch.
  EOS
end
