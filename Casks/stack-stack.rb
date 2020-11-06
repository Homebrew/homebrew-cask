cask "stack-stack" do
  version "3.15.0"
  sha256 "a7ff9a68b9559605f0f47165c5b80fdbe116189bd6c7b72c5726c890591644b2"

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
