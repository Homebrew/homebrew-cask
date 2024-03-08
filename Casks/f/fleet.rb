cask "fleet" do
  arch arm: "aarch64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-aarch64"

  version "1.31.107"
  sha256 arm:   "b320fb4a9daf72e3f0b43bb5cdcd9107ce6b73cb46fc63a0ef82d3699076c182",
         intel: "43bf2728d8529806c4176227137d2f65e1cc597260c3fe912620eee210c14753"

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
