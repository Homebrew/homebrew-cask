cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.27"
  sha256 arm:   "ab4b205e38b1089e285f2e431a441dc423cc7901b1100a33667b4cad56812f0a",
         intel: "ac895ef80abf0248740088a0c0f46ba9b463453a354e3c427dc76ebeebb2397f"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
