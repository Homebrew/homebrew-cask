cask "open-science" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.35.0"
  sha256 arm:          "34866b2faaec398bce7337c43da0a38513a7e759b76aa4defd50041c4bd11118",
         intel:        "8f328d36ea1fab0d938f865952a0d639133957adc82d6fa4b971ff1fe879ab7b",
         x86_64_linux: "bb50799dc06deffb01829f1d92351704ccc49724849df38607aa5c0eb58a15cf"

  on_macos do
    depends_on macos: :monterey

    app "Open-Science.app"

    uninstall quit: "com.aipoch.open-science"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aipoch.open-science.sfl*",
      "~/Library/Application Support/Open Science",
      "~/Library/Caches/com.aipoch.open-science",
      "~/Library/Logs/Open Science",
      "~/Library/Preferences/com.aipoch.open-science.plist",
      "~/Library/Saved Application State/com.aipoch.open-science.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "aipoch-open-science-#{version}-linux-x86_64.AppImage", target: "Open-Science.AppImage"
  end

  url "https://github.com/aipoch/open-science/releases/download/v#{version}/aipoch-open-science-#{version}-#{os}-#{arch}.#{url_end}"
  name "Open Science"
  desc "AI research workbench with scientific agents and notebooks"
  homepage "https://aipoch.com/open-science"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
