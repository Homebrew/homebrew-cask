cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.35"
  sha256 arm:   "064b36080ea66c27bf9ad3d16e20bcb403d755b9af36e427811d9ee9033f1171",
         intel: "5cae1cbc8f6a0e0caadcdfef0e274062d75bd8b5b5edd27f3a5adf6d85ad6aa4"

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
