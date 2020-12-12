cask "barrier" do
  version "2.3.3"
  sha256 "fc6a002d796453eba7a77b9df107af0f972b6e807268e880c88950bde819a40d"

  url "https://github.com/debauchee/barrier/releases/download/v#{version}/Barrier-#{version}-Release.dmg"
  appcast "https://github.com/debauchee/barrier/releases.atom"
  name "Barrier"
  desc "Open-source KVM software"
  homepage "https://github.com/debauchee/barrier/"

  depends_on macos: ">= :sierra"

  app "Barrier.app"

  zap trash: [
    "~/Library/Application Support/barrier",
    "~/Library/Saved Application State/barrier.savedState",
  ]
end
