cask "tagspaces" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "6.13.11"
  sha256 arm:          "1ab5b775b9dae964167ba6d81cd009cd7d335b773f080c626aa9e3b3942a7649",
         intel:        "326e30b9e953d8546f464743de5be13948069b36fc159fd59b5bf9b501bae1bb",
         arm64_linux:  "d64ab6bbbb3aab69aea10a820941b805c11dc8f6b324d1c8f12f387571c9e171",
         x86_64_linux: "96d53e491fc0c497a5f54b730cdfc4752453d950f47e27cc3d947c75f6030695"

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
