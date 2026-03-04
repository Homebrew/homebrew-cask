cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.30"
  sha256 arm:   "afeed6a24d89ae2e9a8d923d4d6a903bd451b99f306a1699c3db75908583959e",
         intel: "b9f95243a700df2c5325c9a4c818df9a3e4f98bd59862a3b4ee236dd64cc163e"

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
