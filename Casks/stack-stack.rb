cask "stack-stack" do
  version "3.11.0"
  sha256 "68ea6c6a163205f6bf1e973ca319b2b3431aff50646534ccc26bd1f978aa9b98"

  # stack-v1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg"
  appcast "https://stack-v1.s3.amazonaws.com/"
  name "Stack"
  homepage "https://stackers.app/"

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
