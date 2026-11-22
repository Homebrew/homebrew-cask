cask "josm" do
  version "19700"
  sha256 arm:   "8cb9f91c18d7560f509a3ddea1de0eeae9bbfe9619ed053dbcf51bc293fdb88b",
         intel: "86d6c08910f0e2eb2b692521afe0acb87e2213a48d4ee878f31e9852f79d37d9"

  url "https://github.com/JOSM/josm/releases/download/#{version}-tested/JOSM-macOS-java25-#{version}-aarch64.zip"
  name "JOSM"
  desc "Extensible editor for OpenStreetMap"
  homepage "https://josm.openstreetmap.de/"

  livecheck do
    url :url
    regex(/\D*?(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "JOSM_25_arm64.app", target: "JOSM.app"

  zap trash: [
    "~/Library/Caches/JOSM",
    "~/Library/JOSM",
    "~/Library/Preferences/JOSM",
    "~/Library/Saved Application State/de.openstreetmap.josm.savedState",
  ]
end
