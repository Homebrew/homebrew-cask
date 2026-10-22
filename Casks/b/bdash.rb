cask "bdash" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "1.35.3"
  sha256 arm:          "1c219a5020984a7230aac5c9ea171ad6e208bda9c0209913bd1ef8971574d69b",
         intel:        "1c219a5020984a7230aac5c9ea171ad6e208bda9c0209913bd1ef8971574d69b",
         x86_64_linux: "b8829ff7d1af4d26079b0f99223daa028323e9a148adcde697f2356bb04c4e4c"

  on_macos do
    depends_on macos: :monterey

    app "Bdash.app"

    zap trash: [
      "~/.bdash",
      "~/Library/Application Support/Bdash",
      "~/Library/Logs/Bdash",
      "~/Library/Preferences/io.bdash.plist",
      "~/Library/Saved Application State/io.bdash.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Bdash-#{version}.AppImage", target: "Bdash.AppImage"
  end

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}#{os}"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end
end
