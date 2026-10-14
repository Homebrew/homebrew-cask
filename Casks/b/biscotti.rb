cask "biscotti" do
  version "0.3.0"
  sha256 "3d3b8c9b5e95e24f2eb6d0dd39319cc33dfcfa6573adb8ce6bb3eae10179fa9f"

  url "https://github.com/scosman/Biscotti/releases/download/v#{version}/Biscotti.dmg"
  name "Biscotti"
  desc "Private meeting transcription"
  homepage "https://biscottiapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Biscotti.app"

  uninstall quit: "net.scosman.biscotti"

  zap trash: "~/Library/Application Support/Biscotti"
end
