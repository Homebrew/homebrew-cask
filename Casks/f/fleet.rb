cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.39.114"
  sha256 arm:   "763773270d10a70fd65a09e99736da5561b9a4ab84df05b55987575c74b3c29c",
         intel: "530f63d3f43be572b6596bc86647fc88b71cb828c59b25648f390c7619dcbf8c"

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
