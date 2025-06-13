cask "tartelet" do
  version "0.12.0"
  sha256 "2733db56fb15835df2e22cf8191d4f9cfc385d9779aa02d88649631fb85b016a"

  url "https://github.com/shapehq/tartelet/releases/download/#{version}/Tartelet.zip"
  name "Tartelet"
  desc "Manage GitHub Actions runners in virtual machines"
  homepage "https://github.com/shapehq/tartelet"

  depends_on macos: ">= :sonoma"

  app "Tartelet.app"

  zap trash: "~/Library/Preferences/dk.shape.Tartelet.plist"
end
