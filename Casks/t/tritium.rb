cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.25"
  sha256 arm:   "c13d46084897237235f5be3c3c331b007d78d493f9ddf546d1b57b500d12bc7c",
         intel: "2f47f8a2c2d9422ea38e2a14b276da1d15da550651fda7e14bc068a710396bef"

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
