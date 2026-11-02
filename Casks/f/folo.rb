cask "folo" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.17.0"
  sha256 arm:          "18489a94db677af3b65cec4f1c27ca0dd6709a5621c51afac849959d093b3e87",
         intel:        "41c55ecc74354eba2bceaa5a98f917897ae4ca63418d29e6499ff3257ace6c6a",
         x86_64_linux: "e627b022db82aec4a9401ff28c93e87d16b7f93d46530380d5f733a759d7eaf7"

  on_macos do
    depends_on macos: :ventura

    app "Folo.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
      "~/Library/Application Support/Folo",
      "~/Library/Logs/Folo",
      "~/Library/Preferences/is.follow.plist",
      "~/Library/Saved Application State/is.follow.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Folo-#{version}-linux-#{arch}.AppImage", target: "Folo.AppImage"

    zap trash: "~/.config/Folo"
  end

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-#{os}-#{arch}.#{url_end}"
  name "Folo"
  desc "Information browser"
  homepage "https://folo.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+)$}i)
  end

  auto_updates true
end
