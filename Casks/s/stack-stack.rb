cask "stack-stack" do
  version "3.43.2"

  on_arm do
    sha256 "2615a79ea08750e3fd4f60b376f8a4e617d578e4c21863a55af0adccc8504dc5"

    url "https://binaries.getstack.app/builds/prod/mac/arm64/Stack%20#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "5846b9af905bdbaef11f04c099a0d0015ab62077ca4d17f33946ca473ef9dd91"

    url "https://binaries.getstack.app/builds/prod/Stack-#{version}.dmg"
  end

  name "Stack"
  desc "Workspace to manage all your productivity apps from one place"
  homepage "https://getstack.app/"

  livecheck do
    url "https://binaries.getstack.app/builds/prod/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Stack.app"

  uninstall quit:       "com.stack.io",
            login_item: "Stack"

  zap trash: [
    "~/Library/Application Support/Stack",
    "~/Library/Preferences/com.stack.io.plist",
  ]
end
