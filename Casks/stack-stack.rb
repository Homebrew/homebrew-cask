cask "stack-stack" do
  version "3.34.2"

  if Hardware::CPU.intel?
    sha256 "53da0601c9fb7dcaa509c61a5cfbfd702f5875dbba081d9ed64b9257ff7711e0"

    url "https://stack-v1.s3.amazonaws.com/builds/prod/Stack-#{version}.dmg",
        verified: "stack-v1.s3.amazonaws.com/"
  else
    sha256 "871762f6bb04f45f9924222f24a4be4808e979b5586a69c779224ef294f3b557"

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
