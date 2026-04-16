cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.36"
  sha256 arm:   "251a721d4224df3903c986fc86274e01c79f3d72b2e7dfdebd8cfc4cf561491b",
         intel: "494cc360dc5fc32e693171d07ee714fcc7f5f5a745a239c8ebd2a9da9405eb6a"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
