cask "lidarr" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1.4417"
  sha256 arm:   "48ee2db8327897ef8e75a85f773d30928b0f99aac9be6b104c0922b22d6af243",
         intel: "af422b823f63cc6921d63ad491e2f09f1cd12b3f3600483df00f627b5f4a6529"

  url "https://github.com/lidarr/Lidarr/releases/download/v#{version}/Lidarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/lidarr/Lidarr/"
  name "Lidarr"
  desc "Looks and smells like Sonarr but made for music"
  homepage "https://lidarr.audio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Lidarr.app"

  zap trash: "~/.config/Lidarr/"
end
