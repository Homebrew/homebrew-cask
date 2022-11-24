cask "stack-stack" do
  version "3.42.0"

  on_intel do
    sha256 "487a92610df958e4bb4c62929941eeb972922f9fd88cdc67861f155db36ad1a3"

    url "https://binaries.getstack.app/builds/prod/Stack-#{version}.dmg"
  end
  on_arm do
    sha256 "634a32ae49660e56bf10eecfdec5db1a8322559a2cd292ade60c32e998d0d232"

    url "https://binaries.getstack.app/builds/prod/mac/arm64/Stack%20#{version}-arm64.dmg"
  end

  name "Stack"
  desc "Workspace to manage all your productivity apps from one place"
  homepage "https://getstack.app/"

  livecheck do
    url "https://binaries.getstack.app/builds/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Stack.app"

  uninstall quit:       "com.stack.io",
            login_item: "Stack"

  zap trash: [
    "~/Library/Application Support/Stack",
    "~/Library/Preferences/com.stack.io.plist",
  ]
end
