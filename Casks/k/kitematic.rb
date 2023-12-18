cask "kitematic" do
  version "0.17.13"
  sha256 "d2e3dba17680eec4789851fba376bb573799f448eea7beb2d7aa990f24feb402"

  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip",
      verified: "github.com/docker/kitematic/"
  name "Kitematic"
  desc "Visual user interface for Docker Container management"
  homepage "https://kitematic.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Kitematic.app"

  zap trash: [
    "~/Kitematic",
    "~/Library/Application Support/Kitematic",
    "~/Library/Caches/Kitematic",
    "~/Library/Logs/Kitematic",
    "~/Library/Preferences/com.electron.kitematic.plist",
    "~/Library/Preferences/com.electron.kitematic.helper.plist",
    "~/Library/Saved Application State/com.electron.kitematic.savedState",
  ]
end
