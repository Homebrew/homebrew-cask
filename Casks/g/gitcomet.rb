cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.3.1"
  sha256 arm:          "5c2decb3b54ed37841713607b4bdd479acdf19f8b2f43a94892d5cfafa23175e",
         intel:        "0baf6beabd81393d3a7e3738460809e910b9a00b8c87a68501e3becd2d47f186",
         arm64_linux:  "3b01e5373e3c0efdcd3c8932acec81cdfd4f29a05b3abbef66bdf36b4a29c9e1",
         x86_64_linux: "b25f61ec69a78abe5d5c6613c69b67784a2a8ca649cf990b82e4dbdd4d5ef6ad"

  on_macos do
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"

    uninstall quit: "ai.autoexplore.gitcomet"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.autoexplore.gitcomet.sfl*",
      "~/Library/Application Support/gitcomet",
      "~/Library/Logs/gitcomet",
      "~/Library/Preferences/ai.autoexplore.gitcomet.plist",
    ]
  end
  on_linux do
    app_image "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "GitComet.AppImage"
  end

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-#{os}-#{arch}.#{url_end}"
  name "GitComet"
  desc "Git GUI"
  homepage "https://gitcomet.dev/"
end
