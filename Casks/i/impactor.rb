cask "impactor" do
  version "2.0.3"
  sha256 "2cabd842de1c80e93c0dde27e57e4b01e0e28f89a6fc6e2cf8386077c34fba1f"

  url "https://github.com/khcrysalis/Impactor/releases/download/v#{version}/Impactor-macos-universal.dmg"
  name "Impactor"
  desc "Sideloading application for iOS/tvOS"
  homepage "https://github.com/khcrysalis/Impactor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Impactor.app"

  zap trash: "~/.config/PlumeImpactor"
end
