cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.39.110"
  sha256 arm:   "87f219ac521585691e0e766c82a5bd38a7f79a5a9ada85281492f44815728160",
         intel: "bcff54ad06b88de8add428c99567f1b70a9263ae8abd1e01b44dbbde25b64420"

  url "https://download.jetbrains.com/fleet/installers/macos_#{arch}/Fleet-#{version}#{arch_suffix}.dmg"
  name "Fleet"
  desc "Hybrid IDE and text editor"
  homepage "https://www.jetbrains.com/fleet/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=FL&latest=true&type=preview"
    strategy :json do |json|
      json["FL"]&.map { |release| release["version"] }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Fleet.app"
  binary "#{appdir}/Fleet.app/Contents/app/bin/fleet"

  zap trash: [
    "~/.fleet",
    "~/Library/Application Support/JetBrains/Fleet",
    "~/Library/Caches/JetBrains/Fleet",
    "~/Library/Logs/JetBrains/Fleet",
  ]
end
