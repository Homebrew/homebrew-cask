cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.42.87"
  sha256 arm:   "95e483c234d6d7c17cd7538ce1ff3b332636e84d5d4d97856fdde0feb0326446",
         intel: "418d552dbc2d4fba12245adcf2d971e91202e752a35b1943ee0671f4cab984f2"

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
