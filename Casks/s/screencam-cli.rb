cask "screencam-cli" do
  version "1.0.4"
  sha256 "46afb7f84ecd363b309085e0a70095e5aa2d6b264d4d0f7a7c077e296d85f527"

  url "https://download.thescreen.cam/cli/releases/#{version}/screencam-cli-#{version}-macos-arm64.zip"
  name "ScreenCam CLI"
  desc "Native command-line client for ScreenCam recording and processing"
  homepage "https://thescreen.cam/"

  livecheck do
    url "https://registry.npmjs.org/@motion-space%2Fscreencam-cli/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  binary "ScreenCamCLI.app/Contents/MacOS/screencam"

  caveats <<~EOS
    ScreenCam CLI requires the compatible ScreenCam app from the Mac App Store.
    Recording, processing, permissions, and Pro entitlement remain App-owned.
  EOS
end
