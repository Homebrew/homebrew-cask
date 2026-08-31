cask "cro-mag-rally" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "mac.dmg", linux: "linux-#{arch}.AppImage"

  version "3.0.1"

  on_macos do
    sha256 "fc039fc19df8a466c7c185490e7768a81760312a89fe415c4ddb2ebc08e601e9"

    app "Cro-Mag Rally.app"
    artifact "Documentation", target: "~/Library/Application Support/CroMagRally"

    zap trash: [
      "~/Library/Preferences/CroMagRally",
      "~/Library/Saved Application State/io.jor.cromagrally.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "8fd24301873fb7650495e4307dd8c34ad6f95038300ad2763cbd9ba406484335",
           x86_64_linux: "3be2a5b501276713f95f07462912954fb75572e90b59b1083007bde1617b8ee2"

    app_image "CroMagRally-#{version}-linux-#{arch}.AppImage", target: "Cro-Mag Rally.AppImage"
  end

  url "https://github.com/jorio/CroMagRally/releases/download/#{version}/CroMagRally-#{version}-#{url_end}"
  name "Cro-Mag Rally"
  desc "Prehistoric-themed 3D racing game from Pangea Software"
  homepage "https://jorio.itch.io/cromagrally"
end
