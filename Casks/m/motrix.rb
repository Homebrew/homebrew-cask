cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.3.0"
  sha256 arm:          "7c3d480c55e7e320eddbfe883b4815afcbd856c40764869e0e70d5a9e63b3bc3",
         intel:        "dfac8a0a287293e1696835cb9da0c9fc8c502e619f6f31db5d47155f116d61a1",
         arm64_linux:  "bfd7b797c939dd9caca62af5b6ab890b5138d5aa52217fb8a1d4cc3adbddd0d9",
         x86_64_linux: "efad8fa5a46eb20c7ea40a3e1748eed3a57ce98965f4e0e8b280a08a1be0b58f"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
