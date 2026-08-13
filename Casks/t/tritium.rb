cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.53"
  sha256 arm:   "d63edb535f77c70b8c77dcb62813bc7736313172b9cc9a4b5bb0e3040ceba7cd",
         intel: "4eb1f8b38ba54aff1bb6f62ea0fac2284aaf39d9deb6a92b77f955e0dce1aa03"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
