cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.55"
  sha256 arm:   "60688a7d94722f7a480622f7dac7d3f67c748e292bd1f1d585b37d9fd2c7d343",
         intel: "f7af79671e30d711ab3623b5a82b11042f5e96ef3f3dfd03964033e1d62d3f63"

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
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
