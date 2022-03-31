cask "hey" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.2.5"

  if Hardware::CPU.intel?
    sha256 "a13b0fca4db8c054d37414c32887b07ddc4870c525cc60ac38d29f0ffc1c4cb1"
  else
    sha256 "e52204ea81ed2ad30bdd0fac3e38f243f1e26c3e74a1911b9f7e602f7c78701a"
  end

  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}#{arch}.dmg",
      verified: "hey-desktop.s3.amazonaws.com/"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
