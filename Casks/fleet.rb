cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.18.88"
  sha256 arm:   "12aa3f1f5567d4f8a73696ce25c9aff8bd492f4e4cf61c5bc862a3cd825e5544",
         intel: "d4e457e254d6ad02084e985350a009c7a9d49545b9c01f1a3403bebbc435899b"

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
