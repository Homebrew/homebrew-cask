cask "stack-stack" do
  version "3.30.4"
  sha256 "61e43c50bb9f162287c122d4e5b60880ec3fa07d7b10f11e5487c9e30f3bc786"

  url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg",
      verified: "stack-v1.s3.amazonaws.com/"
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
