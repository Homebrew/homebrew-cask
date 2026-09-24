cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.60"
  sha256 arm:   "842b1aecd6b5c193741f8682c95857cb6bc8f1e0d8e4d2579462724be122b312",
         intel: "0f119add7aaccd5b45e776bc0397b060d4e0769e813a69b999f944a5ddcc393c"

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
