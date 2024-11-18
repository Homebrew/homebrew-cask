cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.4.4"
  sha256 arm:   "cd3cc549f547672b357833d3d7cf61bcb9e301519b389406b5ad4554020a74a1",
         intel: "7cf9a30d7cb9e2438dafdc4ea2c519fd8361ba5c5d7f783b829df1dde8050341"

  url "https://github.com/cables-gl/cables_electron/releases/download/v#{version}/cables-#{version}-mac#{arch}.dmg"
  name "Cables"
  desc "Visual programming tool"
  homepage "https://github.com/cables-gl/cables_electron"

  livecheck do
    url "https://dev.cables.gl/api/downloads/latest/"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on macos: ">= :catalina"

  app "cables-#{version}.app"

  zap trash: [
    "~/Library/Application Support/cables_electron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gl.cables.standalone.sfl*",
    "~/Library/Logs/cables_electron",
    "~/Library/Preferences/gl.cables.standalone.plist",
    "~/Library/Saved Application State/gl.cables.standalone.savedState",
  ]
end
