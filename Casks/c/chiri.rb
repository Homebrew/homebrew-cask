cask "chiri" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.0.0"
  sha256 arm:          "058df7a9e1663045ad438697f070f7342e3852fd7455fea8f80db0f0df7d2316",
         intel:        "23367f9701f16ac8a561d934288d70d55feb4a52d2b9b5669cf04fbeac64d1fd",
         arm64_linux:  "81b55a78063fd79d7a086010c58e2626acc67f44880f60d519a0f20f01d5d58c",
         x86_64_linux: "36758affb6382df0f904d56b1d9f44d7da88b8a17a9b6d10bf3fd88d86741141"

  on_macos do
    depends_on macos: :monterey

    app "Chiri.app"

    zap trash: [
      "~/Library/Application Support/garden.chiri.Chiri",
      "~/Library/Caches/garden.chiri.Chiri",
      "~/Library/Logs/garden.chiri.Chiri",
      "~/Library/Preferences/garden.chiri.Chiri.plist",
      "~/Library/WebKit/garden.chiri.Chiri",
    ]
  end
  on_linux do
    app_image "Chiri_#{version}_#{arch}.AppImage", target: "Chiri.AppImage"
  end

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.#{url_end}"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
  end
end
