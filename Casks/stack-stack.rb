cask "stack-stack" do
  version "3.32.0"

  if Hardware::CPU.intel?
    sha256 "172199e4f2292cbeb93dc428dae21ffff27e3824d764198fb9117b47f002f5d2"

    url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg",
        verified: "stack-v1.s3.amazonaws.com/"
  else
    sha256 "0c8d4e35f5e320895a1bf2e6cd466cf672f7b992c5ab0bb706ff854f725e9759"

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
