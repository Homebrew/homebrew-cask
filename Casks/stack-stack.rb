cask "stack-stack" do
  version "3.18.0"
  sha256 "6c33198ac4368b6385fe651d5a675e6afe58a462d46ad43caebd8100b5f07beb"

  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg",
      verified: "stack-v1.s3.amazonaws.com/"
  appcast "https://stack-v1.s3.amazonaws.com/builds/prod/latest-mac.yml"
  name "Stack"
  desc "Workspace to manage all your productivity apps from one place"
  homepage "https://getstack.app/"

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
