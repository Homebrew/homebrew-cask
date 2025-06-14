cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "8"
  sha256 arm:   "a4e9c21c74d277d4f2de01385ffc60d387c9b05fb104c2188b982ca0f8a200ce",
         intel: "dbbb123e624c5c695fda2bfa5ff1f14cfe1a61a7a102b4ae235868f4d070ae6f"

  url "https://updater.grayjay.app/Apps/Grayjay.Desktop/#{version}/Grayjay.Desktop-osx-#{arch}-v#{version}.zip"
  name "Grayjay desktop"
  desc "Multi-platform video player"
  homepage "https://grayjay.app/desktop/"

  livecheck do
    url "https://updater.grayjay.app/Apps/Grayjay.Desktop/VersionLastMacOS.json"
    strategy :json, &:to_s
  end

  no_autobump! because: :requires_manual_review

  app "Grayjay.app"

  zap trash: "~/Library/Application Support/Grayjay"
end
