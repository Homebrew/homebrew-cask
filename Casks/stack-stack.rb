cask "stack-stack" do
  version "3.36.1"

  if Hardware::CPU.intel?
    sha256 "682af014498759c38723666d7fbaa67915fc08636d5b3c4e73e302b4b14f7cc7"

    url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg",
        verified: "stack-v1.s3.amazonaws.com/"
  else
    sha256 "b2e866d059c9736810a172d02d91b443807aa4b3d9df6dffd50914b341ef2740"

    url "https://binaries.getstack.app/builds/prod/mac/arm64/Stack%20#{version}-arm64.dmg"
  end

  name "Stack"
  desc "Workspace to manage all your productivity apps from one place"
  homepage "https://getstack.app/"

  livecheck do
    url "https://stack-v1.s3.amazonaws.com/builds/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Stack.app"

  uninstall quit:       "com.stack.io",
            login_item: "Stack"

  zap trash: [
    "~/Library/Application Support/Stack",
    "~/Library/Preferences/com.stack.io.plist",
  ]
end
