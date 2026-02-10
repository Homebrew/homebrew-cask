cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.26"
  sha256 arm:   "d2fef9742729798b57306e59e828318ed577cd99be443b2e827d26866933bd81",
         intel: "430bea8eabff4919be05d6d0f23a6fb8dcadeb7b7106691499c8cf9edb678bd0"

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
