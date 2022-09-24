cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "apple-silicon", intel: "mac"

  on_intel do
    version "2.1.3"
    sha256 "3e291c88b59e82c931933802c21fe2940054dceb1bfa46bc59d054216c369fcf"
  end
  on_arm do
    version "2.1.3"
    sha256 "470438318c8f54d67c54942cab13b7079965d973c39e847197cd4dc00ac85e69"
  end

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://www.notion.so/desktop/#{livecheck_folder}/download"
    strategy :header_match
    regex(/Notion[._-]v?(\d+(?:\.\d+)*?)[^.]*?\.dmg/i)
  end

  auto_updates true

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Caches/notion-updater",
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/notion.id.helper.plist",
    "~/Library/Preferences/notion.id.plist",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
