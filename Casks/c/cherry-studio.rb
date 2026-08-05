cask "cherry-studio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.9.13"
  sha256 arm:          "041a687338ebcd7428253b2bbc9d7d742388cc22d6368093cdff6dedc8f4d6f8",
         intel:        "b4c4b893eb3db9003650d0988f1080be8cd498e04f8541081d8ea68071149df1",
         arm64_linux:  "fc36aa97b9c45e032fd8eccb9807a4aa29311308687e683038f9bf8d4523606f",
         x86_64_linux: "4405140630820314e11f3aba040657f4e993ea3df99e02d0cb71ea9948f34724"

  on_macos do
    depends_on macos: :monterey

    app "Cherry Studio.app"
    binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

    zap trash: [
      "~/Library/Application Support/CherryStudio",
      "~/Library/Caches/cherrystudio-updater",
      "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
      "~/Library/Logs/CherryStudio",
      "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
      "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
    ]
  end
  on_linux do
    app_image "Cherry-Studio-#{version}-#{arch}.AppImage", target: "Cherry Studio.AppImage"
  end

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{arch}.#{url_end}",
      verified: "github.com/CherryHQ/cherry-studio/"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://www.cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
