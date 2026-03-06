cask "paseo" do
  arch arm: "aarch64"

  version "0.1.16"
  sha256 arm: "f546d4bb57fe432934ac1c07ebfc4065242ee1d00272c6630f3fb376d7a2ffcf"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Orchestrate coding agents from anywhere"
  homepage "https://paseo.sh/"

  depends_on macos: ">= :ventura"

  app "Paseo.app"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
  ]
end
