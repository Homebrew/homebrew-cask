cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.32"
  sha256 arm:   "3418bd08df998e9fc4c797e7f9b358f0eaf6fae99863ccbf977adcb109b0c1af",
         intel: "a20d890774a1f4b1c2875ec1e98facb2210e1e7f68b137435967ea5e2760f750"

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
