cask "cloudpouch" do
  url_end = on_system_conditional macos: "-universal-mac.zip", linux: ".AppImage"

  version "2.1.0"
  sha256 arm:          "f7f6839a8221b1cc8465643693efa08c59b2d89dfb3dfd29f1862e5ea9a6b6c6",
         intel:        "f7f6839a8221b1cc8465643693efa08c59b2d89dfb3dfd29f1862e5ea9a6b6c6",
         x86_64_linux: "52a8f422c89d13cb7f171a4c70ffc6c57803708338c8a1fdff6948317209a3e8"

  on_macos do
    depends_on macos: :monterey

    app "CloudPouch.app"

    zap trash: [
      "~/.cloudpouch-aws-sso-client-credentials",
      "~/Library/Application Support/CloudPouch",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.cloudpouch.cloudpouch.sfl*",
      "~/Library/Logs/CloudPouch",
      "~/Library/Preferences/dev.cloudpouch.cloudpouch.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "CloudPouch-#{version}.AppImage", target: "CloudPouch.AppImage"

    zap trash: [
      "~/.cache/cloudpouch-updater",
      "~/.cloudpouch-aws-sso-client-credentials",
      "~/.config/CloudPouch",
    ]
  end

  url "https://github.com/CloudPouch/CloudPouch.dev/releases/download/v#{version}/CloudPouch-#{version}#{url_end}"
  name "CloudPouch"
  desc "AWS cloud FinOps tool"
  homepage "https://cloudpouch.dev/"

  auto_updates true
end
