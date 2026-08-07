cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.52"
  sha256 arm:   "c70502a8f803193bbffdcb3725d1781f5398b268c4c8ec23653da67a4040612a",
         intel: "1399f7603645523af36c8aaddeabda214810a4b1f3186095588047c851017038"

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
