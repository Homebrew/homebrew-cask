cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.67"
  sha256 arm:   "2fb170cacd53da0b096659815670b70b1f95f7f3b3b5386c5d0d79ec646aa92d",
         intel: "8323ab0883901572b63262b4e582e3a67d000e17ad7510e40201c617a9ad180e"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on :macos

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
