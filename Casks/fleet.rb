cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.10.192"
  sha256 arm:   "78d29195a66c6c33c4f30204dc27a1e904d5ed16b25d6ff9e6e70c4ed70d9eae",
         intel: "fcbb983eb279c100d95ac7124465bac9acd2a84969b06504c66fb80bb653bb21"

  url "https://download.jetbrains.com/fleet/installers/macos_#{arch}/Fleet-#{version}#{arch_suffix}.dmg"
  name "Fleet"
  desc "Hybrid IDE and text editor"
  homepage "https://www.jetbrains.com/fleet/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=FL&latest=true&type=preview"
    strategy :page_match do |page|
      JSON.parse(page)["FL"].map do |release|
        (release["version"]).to_s
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fleet.app"

  zap trash: [
    "~/Library/Application Support/JetBrains/Fleet",
    "~/Library/Caches/JetBrains/Fleet",
    "~/Library/Logs/JetBrains/Fleet",
  ]
end
