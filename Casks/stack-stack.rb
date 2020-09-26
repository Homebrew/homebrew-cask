cask "stack-stack" do
  version "3.12.4"
  sha256 "3da554586afafde2ae8638c9c98a734a3dab2e7ac6ab2842253b8d7b94eefb1f"

  # stack-v1.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg"
  appcast "https://stack-v1.s3.amazonaws.com/builds/prod/latest-mac.yml"
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
