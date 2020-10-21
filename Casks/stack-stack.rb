cask "stack-stack" do
  version "3.14.2"
  sha256 "453e0a0ea550095551970fddce24ec29b6382bb7822cd7500dd3bdae5223532f"

  # stack-v1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg"
  appcast "https://stack-v1.s3.amazonaws.com/builds/prod/latest-mac.yml"
  name "Stack"
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
