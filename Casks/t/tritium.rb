cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.43"
  sha256 arm:   "0d64b74cebb03e9033ca1d670b5084f95c3c3f2f066524f435daa5535aefc59e",
         intel: "0be66ee58cb27674c9f184f5f440949bc9182e21255a3025096452c98536f773"

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
