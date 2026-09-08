cask "billy-frontier" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "mac.dmg", linux: "linux-#{arch}.AppImage"

  version "1.1.1"

  on_macos do
    sha256 "d8200ed658786406d0f8ef3ad56ed9eb3a0c4223a689685888e1454d1bb2de1e"

    app "Billy Frontier.app"
    artifact "Instructions.pdf", target: "~/Library/Application Support/BillyFrontier/Instructions.pdf"

    zap trash: [
      "~/Library/Application Support/BillyFrontier",
      "~/Library/Preferences/BillyFrontier",
      "~/Library/Saved Application State/io.jor.billyfrontier.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "9ae93fca1686d665a2ca03fdf76ecf4ef845f9527f151a1a5d30d69ca124679a",
           x86_64_linux: "04dc7a6ab140eab94512d44297694eb7c69282306318dcaef6e11f7d3a167f01"

    app_image "BillyFrontier-#{version}-linux-#{arch}.AppImage", target: "Billy Frontier.AppImage"
  end

  url "https://github.com/jorio/BillyFrontier/releases/download/v#{version}/BillyFrontier-#{version}-#{url_end}"
  name "Billy Frontier"
  desc "Arcade style, cowboys in space themed action game from Pangea Software"
  homepage "https://jorio.itch.io/billyfrontier"
end
