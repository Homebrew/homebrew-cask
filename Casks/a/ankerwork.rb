cask "ankerwork" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "4c229125ccc1374cc409462d15218e22e96ff784eade63a36b097bd4900c0f24",
         intel: "3a99ddf50cc6594adf783a5f1b241fd8491295a2a719d61fec4ab1a1c59191d9"

  url "https://ankerwork.s3.us-west-2.amazonaws.com/electron/AnkerWork-Setup-#{arch}.dmg",
      verified: "ankerwork.s3.us-west-2.amazonaws.com/electron/"
  name "AnkerWork"
  desc "Webcam & audio device software"
  homepage "https://us.ankerwork.com/pages/download-software"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "AnkerWork.app"

  zap trash: "~/Library/Application Support/AnkerWork"
end
