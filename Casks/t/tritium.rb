cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.45"
  sha256 arm:   "775a112f05db943403c2b68db6bd787e636efaec868b7effce51425be9f51731",
         intel: "b40a3ae116c09d20e971cb8ce07632b3642a1c76462bd137a4e0c31f3b7ede9f"

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
