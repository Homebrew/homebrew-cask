cask "ankerwork" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "d56a3b64f25daec7f4d4d41b42c14087e90244949ec520bfbd7defcb2faa143d",
         intel: "3a99ddf50cc6594adf783a5f1b241fd8491295a2a719d61fec4ab1a1c59191d9"

  url "https://ankerwork.s3.amazonaws.com/electron/AnkerWork-Setup-#{arch}.dmg",
      verified: "ankerwork.s3.amazonaws.com/electron/"
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
