cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.37"
  sha256 arm:   "d17b54a3b81772be4c7c35cae9cfa0065d9f3d34db96f7af7da8a1f6c50e0764",
         intel: "b85377a7dc06016633b69ba671b857f5b3e6de490fa20198d7d360799baaf24a"

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
