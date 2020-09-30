cask "stack-stack" do
  version "3.13.2"
  sha256 "1e92623e6b981931f21c9977560758fc231875b7631bf5237e7e3d0ed2427d31"

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
