cask "grayjay" do
  arch arm: "arm64", intel: "x64"

  version "13"
  sha256 arm:   "555d5b88f2036ea9a844a3edadbe1aa5bee21cadd9f64e2e5773ee582912a7eb",
         intel: "23fc172bff8693819e8b0e9c485c5d6cf8354561dc033ffa395e24d686deb572"

  url "https://updater.grayjay.app/Apps/Grayjay.Desktop/#{version}/Grayjay.Desktop-osx-#{arch}-v#{version}.zip"
  name "Grayjay desktop"
  desc "Multi-platform video player"
  homepage "https://grayjay.app/desktop/"

  livecheck do
    url "https://updater.grayjay.app/Apps/Grayjay.Desktop/VersionLastMacOS.json"
    strategy :json, &:to_s
  end

  app "Grayjay.app"

  zap trash: "~/Library/Application Support/Grayjay"
end
