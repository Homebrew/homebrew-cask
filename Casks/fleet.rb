cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.9.237"
  sha256 arm:   "4ae09f430913b03b4c876d99dbdfe6f6680dd9e9d7d58ee3c1b0e990e721d7a5",
         intel: "7d37983e2b8a0b7990809d552d3ae66140be07d611088245e70a3832a4b3ee58"

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
