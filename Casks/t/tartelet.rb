cask "tartelet" do
  version "0.11.0"
  sha256 "308d00f5632fb73f1c5034a4d45ea0103dfdbcd339c27a4c0cd6bbcb2d1ce05f"

  url "https://github.com/shapehq/tartelet/releases/download/#{version}/Tartelet.zip"
  name "Tartelet"
  desc "Manage GitHub Actions runners in virtual machines"
  homepage "https://github.com/shapehq/tartelet"

  depends_on macos: ">= :sonoma"

  app "Tartelet.app"

  zap trash: "~/Library/Preferences/dk.shape.Tartelet.plist"
end
