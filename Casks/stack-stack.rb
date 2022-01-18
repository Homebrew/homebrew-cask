cask "stack-stack" do
  version "3.41.1"

  if Hardware::CPU.intel?
    sha256 "eaca3be87c4dc15eb7634a350d3d0da3ba814f08cc9950878248eeb4492efdf9"

    url "https://binaries.getstack.app/builds/prod/Stack-#{version}.dmg"
  else
    sha256 "388c6db35bc736b1b88b2e7a85b9175670f8e063b7c2256f3ad0a64cee22e425"

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
  depends_on macos: ">= :yosemite"

  app "Stack.app"

  uninstall quit:       "com.stack.io",
            login_item: "Stack"

  zap trash: [
    "~/Library/Application Support/Stack",
    "~/Library/Preferences/com.stack.io.plist",
  ]
end
