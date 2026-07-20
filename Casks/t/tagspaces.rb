cask "tagspaces" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "6.13.12"
  sha256 arm:          "7e092dd98027c637afbabf0ef709d1e130e401c5b848072e210322688fb0d73e",
         intel:        "9eebf40eda3fc2e8d042d7a12c09820639ac980587a222738c24bff289b46996",
         arm64_linux:  "13d163fac83f391280f0970a8e28c2a095dbc7ef70b5aba7f8d6095ac64844aa",
         x86_64_linux: "f956564c9f5c341321e95d7aa75dd880bbe4d262b3a87e146fcf5869511b8c81"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :monterey

    app "TagSpaces.app"

    zap trash: [
      "~/Library/Application Support/TagSpaces",
      "~/Library/Preferences/org.tagspaces.desktopapp.plist",
      "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
    ]
  end

  on_linux do
    app_image "tagspaces-linux-#{arch}-#{version}.AppImage", target: "TagSpaces.AppImage"
  end
end
