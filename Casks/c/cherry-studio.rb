cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.0"
  sha256 arm:          "69d4565c5ea568dc902175ddc38be7afec68c59612241567f343e3bb37b25d0f",
         intel:        "252473b9fafe84e5500d74fc4af454dd15d79439d35246edc9a18729f463d7bc",
         arm64_linux:  "43f0a5d7bd35384bc340e2c1e4cf65a5a548381a1bea3f2aab94a3c37036eb20",
         x86_64_linux: "4b451c77ec68be154a8323eb0cda5a83352933f679c6909490fac4891a25e20c"

  on_macos do
    depends_on macos: :ventura

    app "Cherry Studio.app"
    binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

    zap trash: [
      "~/Library/Application Support/CherryStudio",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.kangfenmao.cherrystudio.sfl*",
      "~/Library/Caches/cherrystudio-updater",
      "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
      "~/Library/Logs/CherryStudio",
      "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
      "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
    ]
  end
  on_linux do
    app_image "Cherry-Studio-#{version}-linux-#{arch}.AppImage", target: "Cherry Studio.AppImage"

    zap trash: [
      "~/.cache/cherrystudio-updater",
      "~/.cherrystudio",
      "~/.config/CherryStudio",
      "~/.local/share/applications/cherrystudio-url-handler.desktop",
    ]
  end

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{os}-#{arch}.#{url_end}"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://www.cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
