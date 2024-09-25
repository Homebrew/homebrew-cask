cask "cables" do
  arch arm: "-arm64", intel: "-x64"

  version "0.3.2"
  sha256 arm:   "2c162eae9fb292a06acf3f9a1b94b22ea727582e22b8b9ea68ec36dd278b242a",
         intel: "aae82bff6406a2b401b1504134c9622a97ec490d101d1551c0c854275a4ac277"

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
